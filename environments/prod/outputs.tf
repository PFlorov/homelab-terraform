output "http_clone_url" {

  description = "The adress for cloning via https"
  value = {
    for k, repo in module.iac_tr_playground : k => repo.http_clone_url
  }
}

output "full_name" {

  description = "orgname/reponame"
  value = {
    for k, repo in module.iac_tr_playground : k => repo.full_name
  }
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API"
  value = {
    for k, repo in module.iac_tr_playground : k => repo.node_id
  }
}

output "instance_id" {
  value = module.aws_ec2.instance_id
}

output "public_ip" {
  value = module.aws_ec2.public_ip
}


