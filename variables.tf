variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
  #default = "playground-s-11-6ee79f70"
  default = ""
}

variable "region" {
  description = "The region of the project will be created"
  type        = string
  # default = "us-central1"
  default = ""
}

variable "zone" {
  description = "The ID of the project where this zone will be created"
  type        = string
  default     = ""
}