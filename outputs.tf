output "test-bucket-for-state" {
  value       = module.google_storage_bucket.test-bucket-for-state
  description = "The name of the bucket being created"
}