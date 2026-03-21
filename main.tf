
resource "cloudflare_dns_record" "test" {
  zone_id = var.cloudflare_zone_id
  name    = "test"
  ttl     = 1
  type    = "CNAME"
  content = var.cloudflare_tunnel_target
  proxied = true
}

resource "github_repository" "iac-tr-playground" {
  name        = "tf-github-lab"
  description = "repo created by tf"

  visibility             = "public"
  auto_init              = true
  delete_branch_on_merge = true
  has_wiki               = false
  has_projects           = false
  has_issues             = true
}
