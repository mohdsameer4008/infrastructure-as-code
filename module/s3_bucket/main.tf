resource "aws_s3_bucket" "first_bucket" {
  bucket = var.s3_bucket_name

  tags = {
    name        = "my bucket"
    environmnet = "dev"
  }
}





