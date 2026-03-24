module "vpc" {
  source = "./modules/vpc"

  cidr_block        = var.cidr_block
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  vpc_name          = "my-vpc"
  subnet_name       = "my-public-subnet"
}

module "ec2" {
  source   = "./modules/ec2"
  for_each = var.instances

  ami           = var.ami
  instance_type = each.value.instance_type
  subnet_id     = module.vpc.subnet_id
  vpc_id        = module.vpc.vpc_id
  name          = each.value.name
}