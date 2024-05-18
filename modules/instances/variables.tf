variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
  default     = ""
}

variable "region" {
  description = "The region of the project will be created"
  type        = string
  default     = ""
}

variable "zone" {
  description = "The ID of the project where this zone will be created"
  type        = string
  default     = ""
}


variable "machine_type" {
  description = ""
  type        = string
  default     = ""
}

variable "boot_disk_image" {
  description = ""
  type        = string
  default     = ""
}

variable "network_interface_network" {
  description = ""
  type        = string
  default     = ""
}
