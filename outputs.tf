
output "device" {
  value     = linode_firewall_device.example
  sensitive = true
}

output "firewall" {
  value     = linode_firewall.example
  sensitive = true
}
