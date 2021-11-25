# terraform-linode-firewall

[![Build Status](https://github.com/JamesWoolfenden/terraform-linode-firewall/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-linode-firewall)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-linode-firewall.svg)](https://github.com/JamesWoolfenden/terraform-linode-firewall/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

## Usage

Requires your Personal Access Token as an Environmental Variable.

Module automatically generate your firewall.

```bash
export LINODE_TOKEN="xxxxx"
```

Include this repository as a module in your existing Terraform code:

```hcl
module "firewall" {
  source      = "github.com/JamesWoolfenden/terraform-linode-firewall"
  version.    = "0.0.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.8 |
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | >=1.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | >=1.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_firewall.example](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/firewall) | resource |
| [linode_firewall_device.example](https://registry.terraform.io/providers/linode/linode/latest/docs/resources/firewall_device) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firewall"></a> [firewall](#input\_firewall) | n/a | <pre>object({<br>    label           = string<br>    inbound_policy  = string<br>    outbound_policy = string<br>  })</pre> | <pre>{<br>  "inbound_policy": "DROP",<br>  "label": "myfirewall",<br>  "outbound_policy": "DROP"<br>}</pre> | no |
| <a name="input_inbound"></a> [inbound](#input\_inbound) | n/a | <pre>list(object({<br>    label    = string<br>    action   = string<br>    protocol = string<br>    ports    = string<br>    ipv4     = list(string)<br>    ipv6     = list(string)<br>  }))</pre> | <pre>[<br>  {<br>    "action": "ACCEPT",<br>    "ipv4": [<br>      "0.0.0.0/0"<br>    ],<br>    "ipv6": [<br>      "::/0"<br>    ],<br>    "label": "http",<br>    "ports": "80",<br>    "protocol": "TCP"<br>  }<br>]</pre> | no |
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | The instance\_id for the firewall to attach to. | `any` | n/a | yes |
| <a name="input_outbound"></a> [outbound](#input\_outbound) | n/a | <pre>list(object({<br>    label    = string<br>    action   = string<br>    protocol = string<br>    ports    = string<br>    ipv4     = list(string)<br>    ipv6     = list(string)<br>  }))</pre> | <pre>[<br>  {<br>    "action": "DROP",<br>    "ipv4": [<br>      "0.0.0.0/0"<br>    ],<br>    "ipv6": [<br>      "::/0"<br>    ],<br>    "label": "reject-http",<br>    "ports": "80",<br>    "protocol": "TCP"<br>  },<br>  {<br>    "action": "DROP",<br>    "ipv4": [<br>      "0.0.0.0/0"<br>    ],<br>    "ipv6": [<br>      "::/0"<br>    ],<br>    "label": "reject-https",<br>    "ports": "443",<br>    "protocol": "TCP"<br>  }<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_device"></a> [device](#output\_device) | n/a |
| <a name="output_firewall"></a> [firewall](#output\_firewall) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Tests

This module is to serve as sample data for Checkov SAST rules.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
