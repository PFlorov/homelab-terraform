output "http_clone_url" {

  description = "The adress for cloning via https"
  value       = module.iac_tr_playground.http_clone_url
}

output "full_name" {

  description = "orgname/reponame"
  value       = module.iac_tr_playground.full_name
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API"
  value       = module.iac_tr_playground.node_id
}
