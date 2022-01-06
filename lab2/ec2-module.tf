module "ec2-module" {
  source="./ec2"
  customer = var.customer
  env_name= var.env_name
  subnet_id= module.subnet_module.subnet_id 
  sg_id=module.sg-module.sg_id

}