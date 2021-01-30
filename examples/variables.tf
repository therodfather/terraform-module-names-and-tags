variable "region" {
  type        = string
  description = "Region to deploy resources into."
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "The environment name to use for this deployment."
  default     = "examples"
}

variable "scm_branch" {
  type        = string
  description = "The branch and tag used to deploy the resource."
  default     = ""
}

variable "scm_commit_id" {
  type        = string
  description = "The specific commit that was used to deploy the resource."
  default     = ""
}

variable "scm_project" {
  type        = string
  description = "The project used to deploy the resource."
  default     = ""
}

variable "scm_repo" {
  type        = string
  description = "The repository used to deploy the release."
  default     = ""
}