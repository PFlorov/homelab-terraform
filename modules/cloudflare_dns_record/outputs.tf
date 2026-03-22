output "id" {
  description = "Cloduflare DNS record ID"
  value       = cloudflare_dns_record.this.id
}

output "name" {
  description = "Cloduflare DNS record name"
  value       = cloudflare_dns_record.this.name
}
