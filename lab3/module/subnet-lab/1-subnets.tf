### public subnets
resource "aws_subnet" "public1" {
  vpc_id     = var.new_vpc_id
  count = length ("${var.create_public1_subnets}")
  cidr_block = var.create_public1_subnets[count.index]
  availability_zone = "us-east-2a"

  tags = {
    Name = "${var.customer}_${var.env_name}_public_subnet1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = var.new_vpc_id
  cidr_block = "${var.cidr_block_public_sub2}"
  availability_zone = "us-east-2b"

  tags = {
    Name = "${var.customer}_${var.env_name}_public_subnet2"
  }
}
