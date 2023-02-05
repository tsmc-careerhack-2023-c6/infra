provider "proxmox" {
  pm_api_url          = "https://${var.proxmox_host}:8006/api2/json"
  pm_api_token_id     = var.token_id
  pm_api_token_secret = var.token_secret

  # Uncomment the below for debugging.
#   pm_log_enable = true
#   pm_log_file = "terraform-plugin-proxmox.log"
#   pm_debug = true
#   pm_log_levels = {
#   _default = "debug"
#   _capturelog = ""
#   }
}

resource "proxmox_vm_qemu" "virtual_machines" {
  for_each = var.virtual_machines

  name        = each.value.hostname
  target_node = each.value.target_node
  clone       = each.value.vm_template
  agent       = 1
  os_type     = "cloud-init"
  cores       = each.value.cpu_cores
  sockets     = each.value.cpu_sockets
  cpu         = "host"
  memory      = each.value.memory
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"

  disk {
    slot     = 0
    size     = "4G"
    type     = "scsi"
    storage  = "local-lvm"
    discard  = "on"
    #iothread = 1
  }

  disk {
    slot     = 1
    size     = "64G"
    type     = "scsi"
    ssd      = 1
    storage  = "saturn"
    #iothread = 1
  }

  network {
    model  = "virtio"
    bridge = each.value.vm_bridge
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  # Cloud-init config
  ipconfig0 = "ip=${each.value.ip_address},gw=${each.value.gateway}"
  ciuser    = "root"
  sshkeys   = var.ssh_key
}

output "vm_ipv4_addresses" {
  value = {
    for instance in proxmox_vm_qemu.virtual_machines :
    instance.name => instance.default_ipv4_address
  }
}