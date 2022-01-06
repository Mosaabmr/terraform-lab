output "public1_subnet_id" {
    value = aws_subnet.public1.*.id
}

output "public2_subnet_id" {
    value = aws_subnet.public2.id
}

output "public1_subnet_cidr" {
    value = aws_subnet.public1.*.cidr_block
}