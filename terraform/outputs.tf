output "vpc_id" {
  description = "VPC ID"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private Subnet IDs"
  value       = module.network.private_subnet_ids
}

output "bastion_public_ip" {
  description = "Bastion Host Public IP"
  value       = module.security.bastion_ip
}

