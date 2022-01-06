variable "customer" {
    type = string
    default = "iti"
}
variable "env_name" {
    type = string
    default = "dev"
}

variable "new_vpc_id" {
    
}

variable "public1_subnet_cidr" {
    type = list(string)
}