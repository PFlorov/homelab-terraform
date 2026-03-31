variable "repository" {
  description = "Name of the github repo for branch protection"
  type        = string
}

variable "users" {
  description = "Name of the user which will be allowed to push to the branch"
  type        = list(string)
  default = []
}

variable "branch" {
  description = "Name of the branch which will be protected"
  type        = string
  default = "main"
}
