variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}
variable "environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)."
  type        = string
}
variable "availability_zones" {
  description = "A list of availability zones for the VPC."
  type        = list(string)
}
variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}
variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
}
variable "database_subnet_cidrs" {
  description = "A list of CIDR blocks for the database subnets."
  type        = list(string)
}
variable "tags" {
  description = "A map of tags to assign to the subnets."
  type        = map(string)
  default     = {}
}

