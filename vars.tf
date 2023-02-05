variable "proxmox_host" {}
variable "token_id" {}
variable "token_secret" {}

variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCRPNCWKHnHfbkCa4kSyXiEpuFGegHgX4INuka1Wr1/VvOtBDH/B2jHkFrxezPCsiYY7VKpa8j8VfBIDHF/ASiuWnPtrpLVxsPg+G+FniRAKnV8CN7qA0sdP8hrQ7EVmVBwTvQDDdrqoDd7vPVcSNga5KGxOGQy6xNeyUDjOgjRn7tvaKdYtYoRXSBuYAKuQy67eTtcwTt/8b56G6MPyQIK6ex3CU2iuS+0rXRHa01RxbUALd9TO+zFiR+Xi8NyvmQ0fLJDcOggPD4+L+g9Pyzm60/ZF788wNlGvKUDm7G5vMwh1ncwO1/zJ56FuJDzzmNDud8GzJoTuDL0XIHLhOGpoQ6at2Y8+ciBbL6kM1vZPE7za87jxZdgZdXkziIHs9Z6+c5mgswWsOIxWYXddoBKU/liVWAquuxgZEtvKOSH9l16vJr/DhB7SZUcNM2R9B+GALAe8ov4cyExcGz9c7iLX3sxGac54MlxM2qnA+0TIrhwO+nfDFfgTAYelEGZfFM= tsmc@tsmc-controller"
}

variable "virtual_machines" {
  default = {
    "tsmc-vm-0-1" = {
      hostname    = "tsmc-vm-0-1"
      ip_address  = "10.100.11.1/24"
      gateway     = "10.100.11.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr300",
    },
    "tsmc-vm-0-2" = {
      hostname    = "tsmc-vm-0-2"
      ip_address  = "10.100.11.2/24"
      gateway     = "10.100.11.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr300",
    },
    "tsmc-vm-0-3" = {
      hostname    = "tsmc-vm-0-3"
      ip_address  = "10.100.11.3/24"
      gateway     = "10.100.11.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr300",
    },
    "tsmc-vm-0-4" = {
      hostname    = "tsmc-vm-0-4"
      ip_address  = "10.100.11.4/24"
      gateway     = "10.100.11.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr300",
    },
    "tsmc-vm-0-5" = {
      hostname    = "tsmc-vm-0-5"
      ip_address  = "10.100.11.5/24"
      gateway     = "10.100.11.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr300",
    },
    "tsmc-vm-1-1" = {
      hostname    = "tsmc-vm-1-1"
      ip_address  = "10.100.12.1/24"
      gateway     = "10.100.12.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr301",
    },
    "tsmc-vm-1-2" = {
      hostname    = "tsmc-vm-1-2"
      ip_address  = "10.100.12.2/24"
      gateway     = "10.100.12.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr301",
    },
    "tsmc-vm-1-3" = {
      hostname    = "tsmc-vm-1-3"
      ip_address  = "10.100.12.3/24"
      gateway     = "10.100.12.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr301",
    },
    "tsmc-vm-1-4" = {
      hostname    = "tsmc-vm-1-4"
      ip_address  = "10.100.12.4/24"
      gateway     = "10.100.12.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr301",
    },
    "tsmc-vm-1-5" = {
      hostname    = "tsmc-vm-1-5"
      ip_address  = "10.100.12.5/24"
      gateway     = "10.100.12.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr301",
    },
    "tsmc-vm-2-1" = {
      hostname    = "tsmc-vm-2-1"
      ip_address  = "10.100.13.1/24"
      gateway     = "10.100.13.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr302",
    },
    "tsmc-vm-2-2" = {
      hostname    = "tsmc-vm-2-2"
      ip_address  = "10.100.13.2/24"
      gateway     = "10.100.13.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr302",
    },
    "tsmc-vm-2-3" = {
      hostname    = "tsmc-vm-2-3"
      ip_address  = "10.100.13.3/24"
      gateway     = "10.100.13.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr302",
    },
    "tsmc-vm-2-4" = {
      hostname    = "tsmc-vm-2-4"
      ip_address  = "10.100.13.4/24"
      gateway     = "10.100.13.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr302",
    },
    "tsmc-vm-2-5" = {
      hostname    = "tsmc-vm-2-5"
      ip_address  = "10.100.13.5/24"
      gateway     = "10.100.13.254",
      target_node = "node1-cilab",
      cpu_cores   = 1,
      cpu_sockets = 2,
      memory      = "8192",
      hdd_size    = "32G",
      vm_template = "ubuntu-2204-cloudinit-template",
      vm_bridge   = "vmbr302",
    },
  }
}