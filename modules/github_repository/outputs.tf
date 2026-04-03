output "full_name" {
  description = "Full name of the repo"
  value       = github_repository.this.full_name
}
output "http_clone_url" {
  description = "HTTPS target of the repo"
  value       = github_repository.this.http_clone_url
}
output "node_id" {
  description = "GraphQL global node id for use with v4 API"
  value       = github_repository.this.node_id
}
