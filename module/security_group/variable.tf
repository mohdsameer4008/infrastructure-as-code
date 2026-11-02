variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "my_security_group"

}

variable "from_port" {
  description = "The starting port for the security group rule"
  type        = number
  default     = 80
}

variable "to_port" {
  description = "The ending port for the security group rule"
  type        = number
  default     = 80
}

variable "from_port_2" {
  description = "The starting port for the security group rule"
  type        = number
  default     = 443
}

variable "to_port_2" {
  description = "The ending port for the security group rule"
  type        = number
  default     = 443
}

variable "from_port_3" {
  description = "The starting port for the security group rule"
  type        = number
  default     = 22
}

variable "to_port_3" {
  description = "The ending port for the security group rule"
  type        = number
  default     = 22
}

variable "cidr_blocks" {
  description = "The CIDR blocks for the security group rule"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "outbound_rule" {
  description = "The port for the outbound rule"
  type        = number
  default     = 0
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-0b11edc84cb1b1b55"
}