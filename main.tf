resource "proxmox_cloud_init_disk" "${var.minecraft_vm_name}-ci-disk" {
  name        = "${var.minecraft_vm_name}-ci-disk"
  description = "Cloud-Init Disk"
  target_node = var.minecraft_vm_target_node

  meta_data = yamlencode({
    instance_id = sha1(var.minecraft_vm_name)
    local_hostname = var.minecraft_vm_name
  })

  user_data = var.cloud_init_user_data

  network_config = yamlencode({
    version = 1
    config = [{
      type = "physical"
      name = ${var.minecraft_vm_network_model}${var.minecraft_vm_network_id}
      subnets = [{
        type = "static"
        address = var.minecraft_vm_address
        gateway = var.minecraft_vm_gateway
        dns_nameservers = var.minecraft_vm_dns_servers
      }]
    }]
  })
}

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

  disks {
    scsi {
      scsi0 {
        cdrom {
          iso = "${proxmox_cloud_init_disk.${var.minecraft_vm_name}-ci-disk.id}"}
      }
    }
    virtio {
      virtio0 {
        disk { 
          size    = var.minecraft_vm_disk_size
          type    = var.minecraft_vm_disk_type
          storage = var.minecraft_vm_disk_storage
          slot    = var.minecraft_vm_disk_slot
        }
      }
    }
  }

  bootdisk = var.minecraft_vm_bootdisk
  boot     = var.minecraft_vm_boot
}

