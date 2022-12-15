locals {

environment = var.environment
owners = var.owners
project = linuxproject
name = "${var.environment}-${var.project}"
tags = {
    owners = local.owners
    environment = local.environment
    project = var.project
    }
}

    
resource "aws_vpc" "main" {
  cidr_block       = var.cidr
  instance_tenancy = var.tenancy
  Name = "${local.name}-vpc"
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

/*
  tags = {
    Description = "main-vpc"
  }
*/

}

resource "aws_subnet" "main_az1" {
  availability_zone = "${var.region}a"
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "Default subnet for ${var.region}a"
    }
}

resource "aws_internet_gateway" "igw" {
  depends_on = aws_vpc.main
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${local.name}-IGW"
    }
}

resource "aws_route_table" "vpc-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.cidr
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

  ingress {
    description      = var.sg_ingress_description
    from_port        = var.ingress_source_port
    to_port          = var.ingress_destination_port
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
