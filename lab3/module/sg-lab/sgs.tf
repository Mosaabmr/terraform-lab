resource "aws_security_group" "sg" {
  name        = "${var.customer}_${var.env_name}_sg_${count.index}"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.new_vpc_id
  count = length(var.public1_subnet_cidr)

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.public1_subnet_cidr[count.index]]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.customer}_${var.env_name}_sg_${count.index}"
  }
}