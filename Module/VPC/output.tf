output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.main.arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

output "vpc_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = aws_route_table.vpc-rt.id
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = aws_vpc.main.owner_id
}

output "vpc_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.main_az1.id
}


output "vpc_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = aws_subnet.main_az1.arn
}

output "vpc_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = aws_subnet.main_az1.cidr_block
}

output "main_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = aws_route_table.vpc-rt.id
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "sg_id" {
  description = "The ARN of the Internet Gateway"
  value       = aws_security_group.allow_traffic.id
}


output "sg_arn" {
  description = "The ARN of the Internet Gateway"
  value       = aws_security_group.allow_traffic.arn
}


