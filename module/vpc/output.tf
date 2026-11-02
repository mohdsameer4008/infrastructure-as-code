output "vpc_id" {
  value = aws_vpc.mera_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.my_subnet_1.id
}

output "private_subnet_id" {
  value = aws_subnet.my_subnet_2.id
}

