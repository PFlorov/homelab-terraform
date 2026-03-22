output "full_name" {
  description = "Full name of the repo"
  value       = github_repository.this.full_name
}
output "http_clone_url" {
  description = "HTTPS target of the repo"
  value       = github_repository.this.http_clone_url
}
