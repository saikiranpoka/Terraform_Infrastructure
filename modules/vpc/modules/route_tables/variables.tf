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
variable "private_subnet_ids" {
  description = "A list of IDs for the private subnets."
  type        = list(string)
}
variable "database_subnet_ids" {
  description = "A list of IDs for the database subnets."
  type        = list(string)
}
variable "nat_gateway_ids" {
  description = "A list of IDs for the NAT Gateways one per az "
  type        = list(string)
}
variable "tags" {
  description = "A map of tags to assign to the route tables."
  type        = map(string)
  default     = {}
}
