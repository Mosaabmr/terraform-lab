resource "aws_subnet" "new-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "${var.customer}-${var.env_name}-new-subnet"
  }
}
