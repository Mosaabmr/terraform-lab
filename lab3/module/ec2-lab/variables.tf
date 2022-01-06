variable "customer" {
    type = string
    default = "iti"
}
variable "env_name" {
    type = string
    default = "dev"
}

variable "ec2_instance_type" {
    
}

variable "ec2_subnet_id" {
    type = list(string)
}

variable "sg_id" {
    type = list(string)
}