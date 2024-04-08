variable "aws_region" {
  description = "Region where the infra is going to be deployed"
  default = "us-east-1"
  type    = string
}

variable "aws_account_id" {
  description = "AWS Account ID where S3 is hosting"
  type        = string
}

variable "bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
}

variable "domain_name" {
  description = "Domain name for the website"
  type        = string
}

variable "subject_alternative_names" {
  description = "Subject alternative names for the certificate"
  type        = list(string)
}

variable "route53_zone_id" {
  description = "Zone ID of Route 53 hosted zone"
  type        = string
}
