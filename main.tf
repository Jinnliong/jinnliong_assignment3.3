module "sshinstance" {
  source = "./modules/sshinstances"

  name_prefix  = var.name_prefix
  environment  = var.environment
  ssh_key_name = var.ssh_key_name
  cidr_blocks  = var.cidr_blocks
}