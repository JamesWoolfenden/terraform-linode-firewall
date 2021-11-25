terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.25.0"
    }
  }
  required_version = ">=0.14.8"
}
