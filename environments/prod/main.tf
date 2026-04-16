
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
  for_each = var.iac_tr_playground
  source   = "../../modules/github_repository"

  name        = each.value.name
  description = each.value.description
  visibility  = each.value.visibility
}

module "branch_protection" {
  for_each = module.iac_tr_playground
  source   = "../../modules/github_branch_protection"

  repository_id = each.value.node_id
  pattern       = "main"
  review_count  = 1
}

module "aws_ec2" {
  source = "../../modules/aws_ec2"
}
