resource "aws_acm_certificate" "static_website_certificate" {
  domain_name       = var.domain_name
  validation_method = "DNS"

  subject_alternative_names = var.subject_alternative_names

  tags = {
    Name      = "Static Website Certificate"
    Terraform = "True"
  }
}
