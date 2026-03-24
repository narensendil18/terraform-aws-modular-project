region            = "us-east-1"
cidr_block        = "10.0.0.0/16"
subnet_cidr       = "10.0.1.0/24"
availability_zone = "us-east-1a"

ami = "ami-0c101f26f147fa7fd"

instances = {
  web1 = {
    instance_type = "t3.micro"
    name          = "web1"
  }
  web2 = {
    instance_type = "t3.micro"
    name          = "web2"
  }
}