variable "project_id" {
  description = "The ID of the project in which to create the service account."
  type        = string
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "me-central2"
}

variable "service_account_id" {
  description = "The ID of the service account to create."
  type        = string
}

variable "service_account_display_name" {
  description = "The display name of the service account."
  type        = string
}

variable "roles" {
  description = "The list of roles to assign to the service account."
  type        = list(string)
  default     = []
}
