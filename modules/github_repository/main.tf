resource "github_repository" "this" {
  name        = var.name
  description = var.description
  visibility  = var.visibility

  has_issues             = var.has_issues
  has_projects           = var.has_projects
  has_wiki               = var.has_wiki
  delete_branch_on_merge = var.delete_branch_on_merge

  auto_init = var.auto_init
}
