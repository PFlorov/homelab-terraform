resource "github_branch_protection_v3" "this" {
  repository = var.repository
  branch     = var.branch

  restrictions {
    users = var.users
  }
}
