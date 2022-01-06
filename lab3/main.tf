module "vpc_module" {
    source = "./modules/vpc"
    customer = var.customer
    env_name = var.env_name
    cidr_block_vpc = var.cidr_block_vpc
}

module "subnet_module" {
    source = "./modules/subnets"
    customer = var.customer
    env_name = var.env_name
    create_public1_subnets = var.create_public1_subnets
    cidr_block_public_sub2 = var.cidr_block_public_sub2
    new_vpc_id = module.vpc_module.new_vpc_id
}

module "security_group_module" {
    source = "./modules/security_groups"
    customer = var.customer
    env_name = var.env_name
    new_vpc_id = module.vpc_module.new_vpc_id
    public1_subnet_cidr = module.subnet_module.public1_subnet_cidr
}

module "ec2_module" {
    source = "./modules/ec2"
    count = var.create_subnets ? 1:0
    customer = var.customer
    env_name = var.env_name
    ec2_instance_type = var.ec2_instance_type
    ec2_subnet_id = module.subnet_module.public1_subnet_id
    sg_id = module.security_group_module.sg_id
}
