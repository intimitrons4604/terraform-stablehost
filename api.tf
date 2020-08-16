resource "aws_route53_record" "api" {
  zone_id = data.terraform_remote_state.dns.outputs.zone_id
  name    = "legacy-api"
  type    = "A"
  ttl     = 86400
  records = ["198.20.92.28"]
}

resource "aws_route53_record" "api_staging" {
  zone_id = data.terraform_remote_state.dns.outputs.zone_id
  name    = "legacy-api-staging"
  type    = "A"
  ttl     = 86400
  records = ["198.20.92.28"]
}
