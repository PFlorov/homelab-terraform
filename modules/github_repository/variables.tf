variable "name" {
  description = "Repo name"
  type        = string
}
variable "description" {
  description = "Repo description"
  type        = string
  default     = ""
}
variable "visibility" {
  description = "Visibility of the repo"
  type        = string
  default     = "public"
}
variable "has_issues" {
  description = "Enable github issues"
  type        = bool
  default     = true
}
variable "has_projects" {
  description = "Enable GitHub projects"
  type        = bool
  default     = false
}
variable "has_wiki" {
  description = "Enable github wiki"
  type        = bool
  default     = false
}
variable "delete_branch_on_merge" {
  description = "Delete merged branches automatically"
  type        = bool
  default     = true
}
variable "auto_init" {
  description = "Initialize repository with an initial commit"
  type        = bool
  default     = true
}
