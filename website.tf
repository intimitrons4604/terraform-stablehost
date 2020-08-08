resource "aws_route53_record" "website_primary" {
  zone_id = data.terraform_remote_state.dns.outputs.zone_id
  name    = ""
  type    = "A"
  ttl     = 86400
  records = ["198.20.92.28"]
}

resource "aws_route53_record" "website_www" {
  zone_id = data.terraform_remote_state.dns.outputs.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 86400
  records = ["intimitrons.ca"]
}

resource "aws_route53_record" "website_primary_staging" {
  zone_id = data.terraform_remote_state.dns.outputs.zone_id
  name    = "staging"
  type    = "A"
  ttl     = 86400
  records = ["198.20.92.28"]
}

resource "aws_route53_record" "website_www_staging" {
  zone_id = data.terraform_remote_state.dns.outputs.zone_id
  name    = "www.staging"
  type    = "CNAME"
  ttl     = 86400
  records = ["staging.intimitrons.ca"]
}
