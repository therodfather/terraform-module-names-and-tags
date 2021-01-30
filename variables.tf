variable "workspace" {
  type        = string
  description = "The workspace the application will serve.  This can be a branch name or static workspace."
}

variable "application_name" {
  type        = string
  description = "The application name."
}

variable "service_name" {
  type        = string
  description = "The service within the application to distinguish it from other services that make up the application."
}

variable "delimiter" {
  type        = string
  description = "The delimiter used to seperate fields in the resource name."
  default     = "-"
}

variable "application_id" {
  type        = string
  description = "The application or research ID of the project."
}

variable "data_classification" {
  type        = string
  description = "One of: Public | Proprietary | Confidential | Secret"
}

variable "owner" {
  type        = string
  description = "The application owners team name."
}

variable "additional_tags" {
  type        = map
  description = "A map (key, value pairs) of additional tags to assocaite with resources."
  default     = {}
}

variable "environment" {
  type        = string
  description = "The friendly name of applications enviroment."
}

variable "scm_project" {
  type        = string
  description = "The Bitbucket project used to deploy the resource."
}

variable "scm_repo" {
  type        = string
  description = "The Bitbucket repository used to deploy the release."
}

variable "scm_branch" {
  type        = string
  description = "The Bitbucket and tag used to deploy the resource."
}

variable "issrcl_level" {
  type        = string
  description = "This tag is used to identify the Information System Security Risk Classification Level for the resource with one of the following: low, medium, high."
}

variable "scm_commit_id" {
  type        = string
  description = "The specific commit that was used to deploy the resource."
}