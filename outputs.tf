output "cloudfront_distribution_domain_name" {
  value = aws_cloudfront_distribution.static_website_distribution.domain_name
}

output "dns_name" {
  value = aws_route53_record.static_website_record.fqdn
}