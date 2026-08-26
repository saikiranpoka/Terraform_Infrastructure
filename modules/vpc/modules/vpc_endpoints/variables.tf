variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}
variable "service_name" {
  description = "The name of the AWS service for the VPC endpoint (e.g., com.amazonaws.us-east-1.s3)."
  type        = string
}
variable "vpc_endpoint_type" {
  description = "The type of the VPC endpoint (Interface or Gateway)."
  type        = string
  validation {
    condition     = contains(["Interface", "Gateway"], var.vpc_endpoint_type)
    error_message = "The endpoint_type must be either 'Interface' or 'Gateway'."
  }
}
variable "subnet_ids" {
  description = "A list of subnet IDs for the VPC endpoint (required for Interface endpoints)."
  type        = list(string)
  default     = []
}
variable "route_table_ids" {
  description = "A list of route table IDs for the VPC endpoint (required for Gateway endpoints)."
  type        = list(string)
  default     = []
}
variable "security_group_ids" {
  description = "A list of security group IDs for the VPC endpoint (required for Interface endpoints)."
  type        = list(string)
  default     = []
}
variable "private_dns_enabled" {
  description = "Whether to enable private DNS for the VPC endpoint (only applicable for Interface endpoints)."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A map of tags to assign to the VPC endpoint."
  type        = map(string)
  default     = {}
}

