variable "vpc_name" {
    type = string
    default = " "
}

variable "vpc_cidr_block" {
    type = string
    default = " "
}

variable "vpc_availability_zones" {
    type = string
    default = " "
}

variable "vpc_subnets" {
    type = string
    default = " "
}

variable "aws_region" {
    type = string
    default = " "
}

variable "ingress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "ingress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "ingress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "ingress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "egress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "egress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "egress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "egress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "instance_keypair" {
  description = "ssh key pair name"
  type        = string
  default     = " "
}