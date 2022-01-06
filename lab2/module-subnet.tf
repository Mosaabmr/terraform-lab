module "subnet_module" {
    source = "./subnets"
    customer = var.customer
    env_name= var.env_name
    subnet_cidr_block= var.subnet_cidr_block
    vpc_id= module.vpc_module.vpc_id 
    
}