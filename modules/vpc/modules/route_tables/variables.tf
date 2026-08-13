variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}
variable "environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)."
  type        = string
}
variable "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  type        = string
}
variable "public_subnet_ids" {
  description = "A list of IDs for the public subnets."
  type        = list(string)
}
