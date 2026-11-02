resource "aws_instance" "webserver" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [var.security_group_id]
  subnet_id       = var.subnet_id
  key_name        = "myserver"
  tags = {
    Name = var.instance_name
  }
}



