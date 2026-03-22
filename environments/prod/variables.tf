
variable "cloudflare_zone_id" {
  description = "Cloudflare zone ID"
  type        = string
}

variable "cloudflare_tunnel_target" {
  description = "Cloudflare tunnel target hostname"
  type        = string
}

variable "github_owner" {
  description = "Github owner of the repos"
  type        = string
}
