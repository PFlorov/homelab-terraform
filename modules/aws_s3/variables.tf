variable "bucket" {
  type        = string
  description = "bucket name"
}

variable "force_destroy" {
  type        = bool
  description = "all objects to be deleted from the bucket when destroyed"
}

variable "tags" {
  type = map(string)
}
