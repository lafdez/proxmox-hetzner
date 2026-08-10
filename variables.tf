variable "api_url" {
  type = string
}

variable "token_id" {
  type = string
}

variable "token_secret" {
  type = string
}

variable "tls_insecure" {
  type = bool
}

variable "minecraft_vm_name" {
  type = string
}

variable "minecraft_vm_desc" {
  type = string
}

variable "minecraft_vm_target_node" {
  type = string
}

variable "minecraft_vm_clone" {
  type = string
}

variable "minecraft_vm_address" {
  type = string
}

variable "minecraft_vm_gateway" {
  type = string
}

variable "minecraft_vm_dns_server" {
  type = string
}

variable "minecraft_vm_cpu_cores" {
  type = number
}

variable "minecraft_vm_cpu_sockets" {
  type = number
}

variable "minecraft_vm_memory" {
  type = number
}

variable "minecraft_vm_scsihw" {
  type = string
}

variable "minecraft_vm_hotplug" {
  type = string
}

variable "minecraft_vm_disk_size" {
  type = string
}

variable "minecraft_vm_disk_type" {
  type = string
}

variable "minecraft_vm_disk_storage" {
  type = string
}

variable "minecraft_vm_disk_slot" {
  type = string
}

variable "minecraft_vm_bootdisk" {
  type = string
}

variable "minecraft_vm_boot" {
  type = string
}

variable "minecraft_vm_network_id" {
  type = number
}

variable "minecraft_vm_network_model" {
  type = string
}

variable "minecraft_vm_network_bridge" {
  type = string
}

variable "satisfactory_vm_name" {
  type = string
}

variable "satisfactory_vm_desc" {
  type = string
}

variable "satisfactory_vm_target_node" {
  type = string
}

variable "satisfactory_vm_clone" {
  type = string
}

variable "satisfactory_vm_address" {
  type = string
}

variable "satisfactory_vm_gateway" {
  type = string
}

variable "satisfactory_vm_dns_server" {
  type = string
}

variable "satisfactory_vm_cpu_cores" {
  type = number
}

variable "satisfactory_vm_cpu_sockets" {
  type = number
}

variable "satisfactory_vm_memory" {
  type = number
}

variable "satisfactory_vm_scsihw" {
  type = string
}

variable "satisfactory_vm_hotplug" {
  type = string
}

variable "satisfactory_vm_disk_size" {
  type = string
}

variable "satisfactory_vm_disk_type" {
  type = string
}

variable "satisfactory_vm_disk_storage" {
  type = string
}

variable "satisfactory_vm_disk_slot" {
  type = string
}

variable "satisfactory_vm_bootdisk" {
  type = string
}

variable "satisfactory_vm_boot" {
  type = string
}

variable "satisfactory_vm_network_id" {
  type = number
}

variable "satisfactory_vm_network_model" {
  type = string
}

variable "satisfactory_vm_network_bridge" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "cloudinit_disk_slot" {
  type = string
}

variable "cipassword" {
  type      = string
  sensitive = true
}
