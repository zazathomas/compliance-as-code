variable "lxc_config" {
    default = {
      target_node: "pve-main"
      ostemplate: "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
      disk_storage: "local-zfs"
      network_interface: "vmbr0"
      dns: "192.168.0.1"
      onboot: false
      start: true
    }
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

variable "ciuser" {
  type = string
}

variable "hostname" {
  type = string 
}

variable "vmid" {
  type = number
  default = 0
}

variable "cores" {
  type = number
}

variable "memory" {
  type = number
}

variable "swap" {
  type = number
}

variable "disk_size" {
  type = string
}