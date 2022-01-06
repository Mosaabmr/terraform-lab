module "sg-module" {
  source="./securty-group"
  customer = var.customer
  env_name= var.env_name
  vpc_id= module.vpc_module.vpc_id 

}