output "ssh" {
  value     = module.instance.ssh
  sensitive = true
}

output "password" {
  value     = module.instance.password
  sensitive = true
}

output "instance" {
  value     = module.instance
  sensitive = true
}

output "device" {
  value     = module.firewall.device
  sensitive = true
}

output "firewall" {
  value     = module.firewall.firewall
  sensitive = true
}
