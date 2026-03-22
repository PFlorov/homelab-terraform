output "http_clone_url" {

  description = "The adress for cloning via https"
  value       = module.iac-tr-playground.http_clone_url
}

output "full_name" {

  description = "orgname/reponame"
  value       = module.iac-tr-playground.full_name
}
