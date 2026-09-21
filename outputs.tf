output "instance_ids" {
  description = "EC2 instance IDs"
  value       = aws_instance.app[*].id
}

output "public_ips" {
  description = "Public IP addresses"
  value       = aws_instance.app[*].public_ip
}

output "environment" {
  description = "Current environment"
  value       = var.environment
}

output "s3_bucket_name" {
  description = "Name of the S3 storage bucket"
  value       = aws_s3_bucket.project_storage.bucket
}