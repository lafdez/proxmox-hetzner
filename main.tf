resource "proxmox_vm_qemu" "${var.minecraft_vm_name}" {
  name        = var.minecraft_vm_name
  description = var.minecraft_vm_desc
  target_node = var.minecraft_vm_target_node

  clone      = var.minecraft_vm_clone
  full_clone = true
  cpu {
    cores   = var.minecraft_vm_cpu_cores
    sockets = var.minecraft_vm_cpu_sockets
  }
  memory = var.minecraft_vm_memory

  scsihw = var.minecraft_vm_scsihw

  hotplug = var.minecraft_vm_hotplug

  network {
    id        = var.minecraft_vm_network_id
    model     = var.minecraft_vm_network_model
    bridge    = var.minecraft_vm_network_bridge
    link_down = false
  }
  ipconfig0 = var.minecraft_vm_ipconfig0

  disk {
    size    = var.minecraft_vm_disk_size
    type    = var.minecraft_vm_disk_type
    storage = var.minecraft_vm_disk_storage
    slot    = var.minecraft_vm_disk_slot
  }

  bootdisk = var.minecraft_vm_bootdisk
  boot     = var.minecraft_vm_boot
}

