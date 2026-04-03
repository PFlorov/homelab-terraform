
variable "cloudflare_zone_id" {
  description = "Cloudflare zone ID"
  type        = string
}


variable "github_owner" {
  description = "Github owner of the repos"
  type        = string
}


variable "dns_records" {
  description = "Map of cloudflare dns records"
  type = map(object({
    name    = string
    type    = string
    content = string
    ttl     = number
    proxied = bool

  }))
}

variable "github_push_users" {
  description = "List of users who can push to protected branches"
  type        = list(string)
}

variable "iac_tr_playground" {
  description = "Map of the repositories desired"
  type = map(object({
    name        = string
    description = string
    visibility  = string
  }))
}
