resource "aws_route53_record" "website_primary" {
  zone_id = data.terraform_remote_state.dns.zone_id
  name    = ""
  type    = "A"
  ttl     = 300
  records = ["198.20.92.28"]
}

resource "aws_route53_record" "website_www" {
  zone_id = data.terraform_remote_state.dns.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 300
  records = ["intimitrons.ca."]
}