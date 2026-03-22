resource "cloudflare_dns_record" "this" {
  zone_id = var.zone_id
  name    = var.name
  ttl     = var.ttl
  type    = var.type
  content = var.content
  proxied = var.proxied
}
