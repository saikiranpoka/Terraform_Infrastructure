variable "public_subnet_ids" {
  description = "A list of public subnet IDs for the NAT Gateway."
  type        = list(string)
}
variable"environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the NAT Gateway."
  type        = map(string)
  default     = {}
}