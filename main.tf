resource "proxmox_vm_qemu" "minecraft-vm" {
  name        = var.minecraft_vm_name
  description = var.minecraft_vm_desc
  target_node = var.minecraft_vm_target_node

  clone      = var.minecraft_vm_clone
  full_clone = true
  memory     = var.minecraft_vm_memory

  scsihw = var.minecraft_vm_scsihw

  hotplug    = var.minecraft_vm_hotplug
  ciuser     = "root"
  cipassword = var.cipassword
  sshkeys    = var.ssh_public_key
  ipconfig0  = "ip=${var.minecraft_vm_address},gw=${var.minecraft_vm_gateway}"
  nameserver = var.minecraft_vm_dns_server
  os_type    = "cloud-init"

  cpu {
    type    = "host"
    cores   = var.minecraft_vm_cpu_cores
    sockets = var.minecraft_vm_cpu_sockets
  }
  network {
    id        = var.minecraft_vm_network_id
    model     = var.minecraft_vm_network_model
    bridge    = var.minecraft_vm_network_bridge
    link_down = false
  }
  disk {
    slot    = var.cloudinit_disk_slot
    storage = var.minecraft_vm_disk_storage
    type    = "cloudinit"
  }
  disk {
    slot    = var.minecraft_vm_disk_slot
    storage = var.minecraft_vm_disk_storage
    size    = var.minecraft_vm_disk_size
    format  = "raw"
  }
  boot = var.minecraft_vm_boot
  startup_shutdown {
    order            = -1
    shutdown_timeout = -1
    startup_delay    = -1
  }
}

resource "proxmox_vm_qemu" "satisfactory-vm" {
  name        = var.satisfactory_vm_name
  description = var.satisfactory_vm_desc
  target_node = var.satisfactory_vm_target_node

  clone      = var.satisfactory_vm_clone
  full_clone = true
  memory     = var.satisfactory_vm_memory

  scsihw = var.satisfactory_vm_scsihw

  hotplug    = var.satisfactory_vm_hotplug
  ciuser     = "root"
  cipassword = var.cipassword
  sshkeys    = var.ssh_public_key
  ipconfig0  = "ip=${var.satisfactory_vm_address},gw=${var.satisfactory_vm_gateway}"
  nameserver = var.satisfactory_vm_dns_server
  os_type    = "cloud-init"

  cpu {
    type    = "host"
    cores   = var.satisfactory_vm_cpu_cores
    sockets = var.satisfactory_vm_cpu_sockets
  }
  network {
    id        = var.satisfactory_vm_network_id
    model     = var.satisfactory_vm_network_model
    bridge    = var.satisfactory_vm_network_bridge
    link_down = false
  }
  disk {
    slot    = var.cloudinit_disk_slot
    storage = var.satisfactory_vm_disk_storage
    type    = "cloudinit"
  }
  disk {
    slot    = var.satisfactory_vm_disk_slot
    storage = var.satisfactory_vm_disk_storage
    size    = var.satisfactory_vm_disk_size
    format  = "raw"
  }
  boot = var.satisfactory_vm_boot
  startup_shutdown {
    order            = -1
    shutdown_timeout = -1
    startup_delay    = -1
  }
}
