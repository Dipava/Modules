vpc_name = "demovpc"
vpc_cidr_block = "10.0.0.0/16"
vpc_availability_zones = "us-east-1a"
vpc_subnets = "10.0.10.0/24"
aws_region = "us-east-1"
ingress_source_port = 22
ingress_destination_port = 22
ingress_protocol = "tcp"
ingress_cidr = ["10.0.0.0/16"]
egress_source_port = 0
egress_destination_port = 0
egress_protocol = "-1"
egress_cidr = ["0.0.0.0/0"]