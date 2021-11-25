
resource "linode_firewall" "example" {
  label = var.firewall["label"]

  dynamic "inbound" {
    for_each = var.inbound
    content {
      label    = inbound.value["label"]
      action   = inbound.value["action"]
      protocol = inbound.value["protocol"]
      ports    = inbound.value["ports"]
      ipv4     = inbound.value["ipv4"]
      ipv6     = inbound.value["ipv6"]
    }
  }

  dynamic "outbound" {
    for_each = var.outbound
    content {
      label    = outbound.value["label"]
      action   = outbound.value["action"]
      protocol = outbound.value["protocol"]
      ports    = outbound.value["ports"]
      ipv4     = outbound.value["ipv4"]
      ipv6     = outbound.value["ipv6"]
    }
  }


  inbound_policy  = var.firewall["inbound_policy"]
  outbound_policy = var.firewall["outbound_policy"]
}
