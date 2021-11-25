module "firewall" {
  source      = "../../"
  instance_id = module.instance.instance_id
}
