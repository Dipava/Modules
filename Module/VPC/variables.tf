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

variable "subnet_cidr" {
  description = "subnet_cidr"
  type        = string
  default     = " "
}
