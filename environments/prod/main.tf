
module "test_dns" {

  source = "../../modules/cloudflare_dns_record"

  zone_id = var.cloudflare_zone_id
  name    = "test"
  ttl     = 1
  type    = "CNAME"
  content = var.cloudflare_tunnel_target
  proxied = true
}

module "test_dns2" {

  source = "../../modules/cloudflare_dns_record"

  zone_id = var.cloudflare_zone_id
  name    = "test2"
  ttl     = 1
  type    = "CNAME"
  content = var.cloudflare_tunnel_target
  proxied = true

}

module "iac-tr-playground" {
  source = "../../modules/github_repository"

  name        = "tf-github-lab"
  description = "repo created by tf"
  visibility  = "public"
}
