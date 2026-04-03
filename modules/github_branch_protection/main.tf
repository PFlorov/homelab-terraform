resource "github_branch_protection" "this" {
  repository_id       = var.repository_id
  pattern             = var.pattern
  enforce_admins      = true
  allows_force_pushes = false
  allows_deletions    = false

  required_pull_request_reviews {
    required_approving_review_count = var.review_count
  }
}
