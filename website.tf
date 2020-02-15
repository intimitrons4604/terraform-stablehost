resource "aws_route53_record" "website_primary" {
  zone_id = "" // TODO
  name    = ""
  type    = "A"
  ttl     = 300
  records = ["198.20.92.28"]
}

resource "aws_route53_record" "website_www" {
  zone_id = "" // TODO
  name    = "www"
  type    = "CNAME"
  ttl     = 300
  records = ["intimitrons.ca."]
}