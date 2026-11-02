variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0b6d9d3d33ba97d99"

}

variable "instance_type" {
  description = "The type of instance to use for the EC2 instance"
  type        = string
  default     = "t3.micro"

}

variable "instance_name" {
  description = "the name tag for the ec2 instance"
  type        = string
  default     = "myec2instance"
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the EC2 instance in"
  type        = string
  default     = "subnet-001564b65d5b26dfc"

}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance"
  type        = string

}

