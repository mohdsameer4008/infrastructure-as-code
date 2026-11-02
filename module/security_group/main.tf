resource "aws_security_group" "vpc_ka_security_group" {
  name        = "vpc_ka_security_group"
  description = "Security group for VPC"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "ingress_http" {
  type              = "ingress"
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = "tcp"
  cidr_blocks       = var.cidr_blocks
  security_group_id = aws_security_group.vpc_ka_security_group.id
}


resource "aws_security_group_rule" "ingress_https" {
  type              = "ingress"
  from_port         = var.from_port_2
  to_port           = var.to_port_2
  protocol          = "tcp"
  cidr_blocks       = var.cidr_blocks
  security_group_id = aws_security_group.vpc_ka_security_group.id
}

resource "aws_security_group_rule" "ingress_ssh" {
  type              = "ingress"
  from_port         = var.from_port_3
  to_port           = var.to_port_3
  protocol          = "tcp"
  cidr_blocks       = var.cidr_blocks
  security_group_id = aws_security_group.vpc_ka_security_group.id
}


resource "aws_security_group_rule" "egress_rule" {
  type              = "egress"
  from_port         = var.outbound_rule
  to_port           = var.outbound_rule
  protocol          = "tcp"
  cidr_blocks       = var.cidr_blocks
  security_group_id = aws_security_group.vpc_ka_security_group.id
}
