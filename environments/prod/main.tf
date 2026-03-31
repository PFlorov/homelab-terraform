
module "dns_records" {
  for_each = var.dns_records
  source   = "../../modules/cloudflare_dns_record"

  zone_id = var.cloudflare_zone_id
  name    = each.value.name
  ttl     = each.value.ttl
  type    = each.value.type
  content = each.value.content
  proxied = each.value.proxied
}

module "iac_tr_playground" {
  source = "../../modules/github_repository"

  name        = "tf-github-lab"
  description = "repo created by tf"
  visibility  = "public"
}

module "branch_protection" {
  source = "../../modules/github_branch_protection"

  repository = module.iac_tr_playground.full_name
  branch     = "main"
  users      = var.github_push_users
}
