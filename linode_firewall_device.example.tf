resource "linode_firewall_device" "example" {
  firewall_id = linode_firewall.example.id
  entity_id   = var.instance_id
}
