resource "aws_route53_record" "email_mx" {
  zone_id = "" // TODO
  name    = ""
  type    = "MX"
  ttl     = 300
  records = ["10 mail.intimitrons.ca"]
}

// mail.intimitrons.ca is currently in use by mail clients
resource "aws_route53_record" "email_mail" {
  zone_id = "" // TODO
  name    = "mail"
  type    = "A"
  ttl     = 300
  records = ["198.20.92.28"]
}

// webmail.intimitrons.ca accesses the web client
// Likely unused by most on the team but maintained for now to ensure there is always a way to access email
resource "aws_route53_record" "email_webmail" {
  zone_id = "" // TODO
  name    = "webmail"
  type    = "A"
  ttl     = 300
  records = ["198.20.92.28"]
}

resource "aws_route53_record" "email_spf" {
  zone_id = "" // TODO
  name    = ""
  type    = "TXT"
  ttl     = 300
  records = [""]// TODO
}

// Private key can be retrieved from cPanel
resource "aws_route53_record" "email_dkim" {
  zone_id = "" // TODO
  name    = "default._domainkey"
  type    = "TXT"
  ttl     = 300
  records = [""] // TODO
}
