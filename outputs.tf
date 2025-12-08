output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The id of the created VPC."
}

output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
  description = "The cidr block of the created VPC."
}

output "public_subnet_ids" {
  value       = module.subnets.public_subnet_ids
  description = "The ids of the public subnets."
}

output "public_route_table_ids" {
  value       = module.subnets.public_route_table_ids
  description = "The route table ids of the public subnets."
}

output "private_subnet_ids" {
  value       = module.subnets.private_subnet_ids
  description = "The ids of the private subnets."
}

output "private_route_table_ids" {
  value       = module.subnets.private_route_table_ids
  description = "The route table ids of the private subnets."
}
