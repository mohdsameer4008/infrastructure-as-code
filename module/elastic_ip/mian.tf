resource "aws_eip" "foo" {
  instance = var.instance_id
}



