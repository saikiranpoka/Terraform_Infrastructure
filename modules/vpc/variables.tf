variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}
variable "Environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)."
  type        = string
}
variable "availability_zones" {
  description = "A list of availability zones for the VPC."
  type        = list(string)
}
variable "tags" {
  description = "A map of tags to assign to the VPC."
  type        = map(string)
  default     = {}
}