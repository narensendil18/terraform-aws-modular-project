output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = module.vpc.subnet_id
}

output "instance_ids" {
  description = "Map of EC2 instance IDs"
  value = { for k, instance in module.ec2 : k => instance.instance_id }
}

output "public_ips" {
  description = "Map of EC2 public IPs"
  value = { for k, instance in module.ec2 : k => instance.public_ip }
}