module "vpc_module" {
  source="./vpc"
  customer = var.customer
  env_name= var.env_name
  vpc_cidr_block = var.vpc_cidr_block
}