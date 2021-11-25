variable "instance_id" {
  description = "The instance_id for the firewall to attach to."
  sensitive   = true
}



variable "firewall" {
  type = object({
    label           = string
    inbound_policy  = string
    outbound_policy = string
  })

  default = {
    label           = "myfirewall"
    inbound_policy  = "DROP"
    outbound_policy = "DROP"
  }

}


variable "inbound" {
  type = list(object({
    label    = string
    action   = string
    protocol = string
    ports    = string
    ipv4     = list(string)
    ipv6     = list(string)
  }))

  default = [{
    label    = "http"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "80"
    ipv4     = ["0.0.0.0/0"]
    ipv6     = ["::/0"]
  }]

}

variable "outbound" {
  type = list(object({
    label    = string
    action   = string
    protocol = string
    ports    = string
    ipv4     = list(string)
    ipv6     = list(string)
  }))
  default = [
    {
      label    = "reject-http"
      action   = "DROP"
      protocol = "TCP"
      ports    = "80"
      ipv4     = ["0.0.0.0/0"]
      ipv6     = ["::/0"]
    },
    {
      label    = "reject-https"
      action   = "DROP"
      protocol = "TCP"
      ports    = "443"
      ipv4     = ["0.0.0.0/0"]
      ipv6     = ["::/0"]
  }]

}
