variable "repository_id" {
  description = "Name of the github repo for branch protection"
  type        = string
}

variable "users" {
  description = "Name of the user which will be allowed to push to the branch"
  type        = list(string)
  default     = []
}

variable "pattern" {
  description = "Name of the branch which will be protected"
  type        = string
  default     = "main"
}

variable "review_count" {
  description = "Required x number of approvals to satisfy branch protection requirements."
  type        = number
  default     = 0
}
