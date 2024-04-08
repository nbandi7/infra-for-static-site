resource "aws_route53_record" "static_website_record" {
  zone_id = var.route53_zone_id
  name    = var.domain_name
  type    = "CNAME"
  ttl     = "20"
  records = [aws_cloudfront_distribution.static_website_distribution.domain_name]
}