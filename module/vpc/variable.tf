variable "aws_vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "route_table_cidr" {
  description = "The CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}

variable "internet_gateway_name" {
  description = "The name of the internet gateway"
  type        = string
  default     = "my_igw"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-0b11edc84cb1b1b55"
}