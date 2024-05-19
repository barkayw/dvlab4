output "test-bucket-for-state" {
  value       = module.google_storage_bucket.test-bucket-for-state
  description = "The name of the bucket being created"
}


output "network" {
  #  value       = module.network.network-name
   value       = module.network.network.network.network_self_link
  # value       = module.vpc.google_compute_network.network

  description = "The name of the bucket being created"
}
output "subnetworks" {
    #value       = module.network.network.subnets
    value       = module.network.network.subnets_self_links
  description = "The name of the subnetworks being created"
}
