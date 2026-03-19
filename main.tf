
resource "cloudflare_dns_record" "test" {
  zone_id = var.cloudflare_zone_id
  name    = "test"
  ttl     = 1
  type    = "CNAME"
  content = var.cloudflare_tunnel_target
  proxied = true
}
