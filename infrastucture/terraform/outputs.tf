output "vmid_control" {
  value = proxmox_vm_qemu.crypto-pixzl-control.vmid
}
output "vm_name_control" {
  value = proxmox_vm_qemu.crypto-pixzl-control.name
}
output "vmid_worker" {
  value = proxmox_vm_qemu.crypto-pixzl-worker.vmid
}

output "vm_name_worker" {
  value = proxmox_vm_qemu.crypto-pixzl-worker.name
}

output "vm_ip_control" {
  value       = proxmox_vm_qemu.crypto-pixzl-control.ipconfig0
  description = "IP address VM control (butuh agent=1 dan VM sudah running)"
}

output "vm_ip_worker" {
  value       = proxmox_vm_qemu.crypto-pixzl-worker.ipconfig0
  description = "IP address VM worker (butuh agent=1 dan VM sudah running)"
}
