resource "proxmox_vm_qemu" "crypto-pixzl-control" {
  name        = var.control_vm_name
  target_node = var.node_name
  clone       = var.template
  full_clone  = true
  os_type     = "cloud-init"

  cpu {
    cores   = var.cores
    sockets = 1
    type    = "host"
  }

  memory = var.memory

  scsihw   = var.scsihw
  bootdisk = var.bootdisk

  disk {
    slot     = "scsi0"
    size     = var.disk_size
    type     = "disk"
    storage  = var.storage
    iothread = true
  }

  disk {
    slot    = "ide2"
    type    = "cloudinit"
    storage = var.cloudinit_storage
  }

  network {
    id     = 0
    model  = "virtio"
    bridge = var.bridge
  }

  # cloud-init user/password & SSH key
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = file(var.ssh_public_key_path)

  # enable guest agent agar Proxmox bisa query VM
  agent = 1

  # request DHCP via cloud-init
  ipconfig0 = var.ipconfig-control
}




resource "proxmox_vm_qemu" "crypto-pixzl-worker" {
  name        = var.worker_vm_name
  target_node = var.node_name
  clone       = var.template
  full_clone  = true
  os_type     = "cloud-init"

  cpu {
    cores   = var.cores
    sockets = 1
    type    = "host"
  }

  memory = var.memory

  scsihw   = var.scsihw
  bootdisk = var.bootdisk

  disk {
    slot     = "scsi0"
    size     = var.disk_size
    type     = "disk"
    storage  = var.storage
    iothread = true
  }

  disk {
    slot    = "ide2"
    type    = "cloudinit"
    storage = var.cloudinit_storage
  }

  network {
    id     = 0
    model  = "virtio"
    bridge = var.bridge
  }

  # cloud-init user/password & SSH key
  ciuser     = var.ci_user
  cipassword = var.ci_password
  sshkeys    = file(var.ssh_public_key_path)

  # enable guest agent agar Proxmox bisa query VM
  agent = 1

  # request DHCP via cloud-init
  ipconfig0 = var.ipconfig-worker
}
