variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
  #default = "playground-s-11-6ee79f70"
  default = ""
}

variable "region" {
  description = "The region of the project will be created"
  type        = string
   default = "us-central1"

}

variable "zone" {
  description = "The ID of the project where this zone will be created"
  type        = string
  default     = "us-central1-a"
}


variable "machine_type" {
  description = ""
  type        = string
  default     = "e2-medium"
  #default     = "e2-standard-2"
  
}

variable "boot_disk_image" {
  description = ""
  type        = string
  default     = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-10-buster-v20240417"
}

variable "network_interface_network" {
  description = ""
#  type        = string
 default     = "https://www.googleapis.com/compute/v1/projects/playground-s-11-7cfb70e1/global/networks/default"
#  default     =  "https://www.googleapis.com/compute/v1/projects/playground-s-11-7cfb70e1/global/networks/vpc-name"
}  
  
#  variable "dsubnetwork 01" {
#    description = ""
#  #  type        = string
#   dsubnetwork                   = "https://www.googleapis.com/compute/v1/projects/playground-s-11-7cfb70e1/regions/us-central1/subnetworks/subnet-01"
#  }  
#    
#  variable "dsubnetwork 02" {
#    description = ""
#  #  type        = string
#   dsubnetwork                   = "https://www.googleapis.com/compute/v1/projects/playground-s-11-7cfb70e1/regions/us-central1/subnetworks/subnet-02"
#  }  
  