locals {

environment = var.environment
owners = var.owners
project = "linuxproject"
name = "${var.environment}-${var.project}"
tags = {
    owners = local.owners
    environment = local.environment
    project = var.project
    name = "${var.environment}-${var.project}"
    }
}

    
resource "aws_vpc" "main" {
  cidr_block       = var.cidr
  instance_tenancy = var.tenancy
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    name = var.vpc_name
  }
}

resource "aws_subnet" "main_az1" {
  availability_zone = var.azs
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  tags = local.tags
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${local.name}-IGW"
    }
}

resource "aws_route_table" "vpc-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = { 
    Name = "${local.name}-RT"
  }
}


resource "aws_security_group" "allow_traffic" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.main.id

egress      = [
    {
      description      = ""
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      self             = false
      security_groups  = []
      cidr_blocks      = var.egress_cidr
      from_port        = var.egress_source_port
      protocol         = var.egress_protocol
      to_port          = var.egress_destination_port
    },
  ]

  ingress     = [
        {
          description      = ""
          ipv6_cidr_blocks = []
          prefix_list_ids  = []
          self             = false
          security_groups  = []
          cidr_blocks      = var.ingress_cidr
          from_port        = var.ingress_source_port
          protocol         = var.ingress_protocol
          to_port          = var.ingress_destination_port
        },
  ]

  tags = {
    Name = "${local.name}-sg"
  }
}
