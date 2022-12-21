output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.vpc.arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.cidr_block
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = module.vpc.main_route_table_id
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = module.vpc.owner_id
}

output "vpc_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc.vpc_subnets
}


output "vpc_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = module.vpc.vpc_subnet_arns
}

output "vpc_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = module.vpc.vpc_subnets_cidr_blocks
}

output "main_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.vpc.main_route_table_ids
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.igw_id
}

output "sg_id" {
  description = "The ID of the security group"
  value       = module.vpc.sg_id
}


output "sg_arn" {
  description = "The ARN of the security group"
  value       = module.vpc.sg_arn
}


