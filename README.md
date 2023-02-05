# infra
Infra creation with pve cluster

# Create of Remplate

Login to your PVE shell

## PVE cloud image

### Install cloud image

```
curl -O https://cloud-images.ubuntu.com/releases/jammy/release/ubuntu-22.04-server-cloudimg-amd64.img
```

## Add requirements for PVE health checks

### Install libgestfs-tools

```
sudo apt install libguestfs-tools -y
```

### Install to cloud image

```
virt-customize -a ubuntu-22.04-server-cloudimg-amd64.img --install qemu-guest-agent
```

## Create Template on PVE

```
qm create 9000 --name ubuntu-2204-cloud-init --cpu cputype=host --cores 1 --sockets 2 --memory 2048 --net0 virtio,bridge=vmbr100
```

**Remember to add network bridge vmbr100 in your pve cluster**

### Configs application

```
qm importdisk 9000 /tmp/ubuntu-22.04-server-cloudimg-amd64.img local-lvm
qm set 9000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-9000-disk-0
qm set 9000 --ide2 local-lvm:cloudinit
qm set 9000 --boot c --bootdisk scsi0
qm set 9000 --serial0 socket --vga serial0
qm set 9000 --agent enabled=1

qm template 9000
```

## Test creation

```
qm clone 9000 999 --name ubuntu-test --full --storage local-lvm
qm set 999 --sshkey ~/.ssh/id_rsa.pub
qm set 999 --ipconfig0 ip=192.168.0.10/24,gw=192.168.0.254

qm start 999
```

**Remember to change ipconfig0 to your pve cluster network config**

### Test Connection

```
ssh ubuntu@192.168.0.10
```

### Clean up

```
qm stop 999 && qm destroy 999
```

# Terraform

```
terraform init
terraform test
terraform apply
```