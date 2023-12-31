variable "vpc_id" {
  type        = string
  description = "AWS VPC ID"
}

variable "emailtag" {
  type        = string
  default     = "vibhanshu@quadcorps.co.uk"
  description = "Email ID for resource tag"
}

variable "region" {
  type        = string
  default     = "eu-west-2"
  description = "AWS deployment region"
}

variable "az_list" {
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
  description = "EU West 2 availability zones"
}

variable "private_subnets" {
  type        = list(string)
  default     = ["subnet-0a70411a1c75052f8", "subnet-0e03581827149d29b"]
  description = "Subnets for eks"
}
