output "http_clone_url" {

  description = "The adress for cloning via https"
  value       = github_repository.iac-tr-playground.http_clone_url
}

output "full_name" {

  description = "orgname/reponame"
  value       = github_repository.iac-tr-playground.full_name
}
