resource "proxmox_lxc" "basic" {
  target_node  = var.lxc_config.target_node
  hostname     = var.hostname
  ostemplate   = var.lxc_config.ostemplate
  password     = var.cipassword
  unprivileged = true
  cores = var.cores
  memory = var.memory
  nameserver = var.lxc_config.dns
  onboot = var.lxc_config.onboot
  start = var.lxc_config.start
  vmid = var.vmid
  swap = var.swap

  // Terraform will crash without rootfs defined
  rootfs {
    storage = var.lxc_config.disk_storage
    size    = var.disk_size
  }

  network {
    name   = "eth0"
    bridge = var.lxc_config.network_interface
    ip     = "dhcp"
  }

  ssh_public_keys = <<-EOT
    ${file("~/.ssh/id_rsa.pub")}
  EOT

  features {
    nesting = true
  }

}

