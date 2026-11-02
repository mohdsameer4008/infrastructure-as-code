module "aws_vpc" {
  source = "./module/vpc"
}

module "aws_security_group" {
  source = "./module/security_group"
  vpc_id = module.aws_vpc.vpc_id
}

module "aws_ec2" {
  source            = "./module/ec2"
  security_group_id = module.aws_security_group.security_id
  subnet_id         = module.aws_vpc.public_subnet_id
}

module "elastic_ip" {
  source = "./module/elastic_ip"
}

module "s3" {
  source = "./module/s3_bucket"

}