variable "control_vm_name" {
  type    = string
  default = "crypto-pixzl-control"
}
variable "worker_vm_name" {
  type    = string
  default = "crypto-pixzl-worker"
}

variable "node_name" {
  type    = string
  default = "etherserver"
}

variable "template" {
  type    = string
  default = "VM 9002" # <-- your new template
}

variable "cores" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 6144
}

variable "disk_size" {
  type    = string
  default = "40G"
}

variable "scsihw" {
  type    = string
  default = "virtio-scsi-pci"
}

variable "bootdisk" {
  type    = string
  default = "scsi0"
}

variable "bridge" {
  type    = string
  default = "vmbr0"
}

variable "storage" {
  type    = string
  default = "local-lvm"
}

variable "ssh_user" {
  type    = string
  default = "test"
}

variable "ssh_public_key_path" {
  type = string
  # Ganti dengan path ke file SSH public key laptop kamu
  # Contoh: "~/.ssh/id_rsa.pub" atau "~/.ssh/id_ed25519.pub"
  // mac
  default = "~/.ssh/id_rsa.pub"
}

variable "cloudinit_storage" {
  type    = string
  default = "local-lvm"
}

variable "ci_user" {
  type = string
}

variable "ci_password" {
  type      = string
  sensitive = true
}

variable "proxmox_token_secret" {
  type      = string
  sensitive = true
}

variable "proxmox_api_url" {
  type      = string
  sensitive = true
}

variable "proxmox_api_token_id" {
  type      = string
  sensitive = true
}

variable "ipconfig-control" {
  type      = string
  sensitive = false
}

variable "ipconfig-worker" {
  type      = string
  sensitive = false
}
