output "vm_ip_address" {
  description = "The IP address of the Minecraft VM"
  value       = proxmox_vm_qemu.minecraft-vm.ipconfig0
}
