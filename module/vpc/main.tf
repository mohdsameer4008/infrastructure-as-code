resource "aws_vpc" "mera_vpc" {
  cidr_block = var.aws_vpc_cidr
  tags = {
    Name = "mera_vpc"
  }
}

#create a public subnet
resource "aws_subnet" "my_subnet_1" {
  vpc_id     = aws_vpc.mera_vpc.id
  cidr_block = var.public_subnet_cidr
  tags = {
    Name = "public_subnet"
  }
}

#create a private subnet
resource "aws_subnet" "my_subnet_2" {
  vpc_id     = aws_vpc.mera_vpc.id
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = "private_subnet"
  }
}
#create a route table and connecting it to the internet gateway

resource "aws_route_table" "sameer_route" {
  vpc_id = aws_vpc.mera_vpc.id
  route {
    cidr_block = var.route_table_cidr
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "sameer_route"
  }
}

resource "aws_route_table_association" "my_route" {
  route_table_id = aws_route_table.sameer_route.id
  subnet_id      = aws_subnet.my_subnet_1.id
}

resource "aws_route_table_association" "my_route_2" {
  route_table_id = aws_route_table.sameer_route.id
  subnet_id      = aws_subnet.my_subnet_2.id
}


#create a internet gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.mera_vpc.id

  tags = {
    Name = var.internet_gateway_name
  }
}
