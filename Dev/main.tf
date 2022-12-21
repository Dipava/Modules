locals {

environment = dev
owners = Dipava
project = linuxproject
name = "${local.environment}-${local.project}"
tags = {
    owners = local.owners
    environment = local.environment
    project = var.project
    name = "${var.environment}-${var.project}"
    }
}

data "aws_ami" "amzlinux2" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

module "vpc" {
  source  = "./Module/VPC"

  vpc_name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  subnet_cidr  = var.vpc_subnets
  enable_dns_hostnames = false
  enable_dns_support   = true


  tags = local.tags
  vpc_tags = local.tags
}

resource "aws_instance" "test-vm" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  iam_instance_profile = "ec2-admin-role"
  subnet_id = module.vpc.vpc_subnets
  vpc_security_group_ids = module.vpc.sg_id
  user_data = file("${path.module}/user_data.sh")
  tags = local.tags

}
