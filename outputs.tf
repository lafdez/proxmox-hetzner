output "minecraft_vm_ip_address" {
  description = "The IP address of the Minecraft VM"
  value       = proxmox_vm_qemu.minecraft-vm.ipconfig0
}

output "satisfactory_vm_ip_address" {
  description = "The IP address of the Satisfactory VM"
  value       = proxmox_vm_qemu.satisfactory-vm.ipconfig0
}

