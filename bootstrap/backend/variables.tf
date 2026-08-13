variable "aws_region" {
  description = "The AWS region "
  type        = string
}
variable "state_bucket_name" {
  description = "The S3 bucket to store the Terraform state globally"
  type        = string
}
