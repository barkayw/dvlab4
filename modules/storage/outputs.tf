output "test-bucket-for-state" {
  value       = google_storage_bucket.test-bucket-for-state.name
  description = "The name of the bucket being created"
}
