variable "vm_config" {
    default = {
      target_node: "pve-main"
      bios: "ovmf"
      disk_storage: "local-zfs"
      network_interface: "vmbr0"
      dns: "192.168.0.1"
      vm_state: "running"
      onboot: false
    }
}

variable "ciuser" {
  type = string
}

variable "cipassword" {
  type = string
}

variable "proxmox_api_token" {
  type = string
}

variable "proxmox_api_secret" {
  type = string
}

variable "proxmox_api_host" {
  type = string
  default = "http://192.168.0.189:8006/api2/json"
}

variable "vm_name" {
  type = string
}

variable "clone_from_vm" {
  type = string
  default = "Ubuntu-24.04"
}

variable "vm_count" {
  type = number
  default = 1
}

variable "vmid" {
  type = number
  default = 101
}

variable "disk_size" {
  type = string
  default = "10G"
}

variable "memory" {
  type = number
  default = 1024
}

variable "cores" {
  type = number
  default = 4
}

variable "balloon" {
  type = number
  default = 512
}
