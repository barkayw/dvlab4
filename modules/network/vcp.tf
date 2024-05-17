
module "network" {
  source  = "terraform-google-modules/network/google"
  version = "6.0.0"
  # insert the 3 required variables here
network_name = ""
project_id = var.project_id
subnets = {
  subnet-02 = "10.10.20.0/24"
  subnet-01 = "10.10.10.0/24"
}

}
