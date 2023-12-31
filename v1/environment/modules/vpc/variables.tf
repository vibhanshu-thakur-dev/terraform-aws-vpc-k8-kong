variable "profile" {
  type        = string
  default     = "quadcorps"
  description = "AWS Profile"
}

variable "region" {
  type        = string
  default     = "eu-west-2"
  description = "AWS deployment region"
}

variable "vpc_name" {
  type        = string
  default     = "vibhanshu-test-vpc"
  description = "VPC Name"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "environment"
}

variable "az_list" {
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
  description = "EU West 2 availability zones"
}

variable "public_subnet_cidr_list" {
  type        = list(string)
  default     = ["10.0.1.0/20", "10.0.16.0/20"]
  description = "Public subnet CIDRs"
}

variable "private_subnet_cidr_list" {
  type        = list(string)
  default     = ["10.0.32.0/20", "10.0.48.0/20", "10.0.64.0/20", "10.0.80.0/20"]
  description = "Private subnet CIDRs"
}

variable "emailtag" {
  type        = string
  default     = "vibhanshu@quadcorps.co.uk"
  description = "Email ID for resource tag"
}