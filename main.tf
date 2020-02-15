provider "aws" {
  version = "~> 2.0"
  region  = "us-west-2"
}

data "terraform_remote_state" "dns" {
  backend = "remote"
  hostname = "app.terraform.io"
  organization = "intimitrons"
  workspaces {
    name = "dns"
  }
}

// Ensure we maintain easy access to cPanel until we migrate off StableHost
resource "aws_route53_record" "cpanel" {
  zone_id = "" // TODO
  name    = "cpanel"
  type    = "A"
  ttl     = 300
  records = ["198.20.92.28"]
}
