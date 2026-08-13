variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}
variable "environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the VPC."
  type        = map(string)
  default     = {}
}
  
