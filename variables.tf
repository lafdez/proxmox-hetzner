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

variable "vm_ssh_key" {
  type = string
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

variable "minecraft_vm_dns_servers" {
  type = list(string)
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


