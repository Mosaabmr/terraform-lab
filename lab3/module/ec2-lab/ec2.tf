resource "aws_instance" "ec2" {
  ami           = "ami-002068ed284fb165b"
  instance_type = var.ec2_instance_type
  count = length(var.ec2_subnet_id)
  subnet_id = var.ec2_subnet_id[count.index]
  vpc_security_group_ids = [var.sg_id[0]]

  tags = {
    Name = "${var.customer}_${var.env_name}_ec2_${count.index}"
  }
}