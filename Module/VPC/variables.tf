variable "environment" {
  description = "Build Environment"
  type        = string
  default     = " "
}

variable "owners" {
  description = "Build Owners"
  type        = string
  default     = "Dipava"
}

variable "project" {
  description = "Business Project"
  type        = string
  default     = "linuxproject"
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = " "
}

variable "cidr" {
  description = "Default CIDR"
  type        = string
  default     = " "
}

variable "tenancy" {
  description = "Instance Tenancy"
  type        = string
  default     = "default"
}

variable "enable_dns_support" {
  description = "enable_dns_support"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "enable_dns_hostnames"
  type        = bool
  default     = false
}


variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "azs" {
  description = "AWS AZ"
  type        = string
  default     = "us-east-1a"
}

variable "subnet_cidr" {
  description = "subnet_cidr"
  type        = string
  default     = " "
}

variable "sg_name" {
  description = "sg name"
  type        = string
  default     = " "
}


variable "sg_description" {
  description = "sg description"
  type        = string
  default     = " "
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


