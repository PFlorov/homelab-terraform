variable "zone_id" {
  description = "Cloudflare zone ID"
  type        = string
}
variable "name" {
  description = "DNS record name"
  type        = string
}
variable "type" {
  description = "Type of the DNS record"
  type        = string
}
variable "content" {
  description = "DNS record content"
  type        = string
}
variable "ttl" {
  description = "DNS record TTL"
  type        = string
  default     = 1
}
variable "proxied" {
  description = "Whether the DNS record is proxied by Cloudflare"
  type        = bool
  default     = true
}

