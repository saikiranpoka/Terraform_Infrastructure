variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}
variable "environment" {
  description = "The environment for the VPC (e.g., dev, staging, prod)."
  type        = string
}
variable "security_groups" {
  description = "The security groups to create."
  type        = map(object({
    description = string
    tags        = optional(map(string),{})
    }))
}    
variable 'security_group_rules' {
  description = "The security group rules to create."
  type        = map(object({
    direction                = string
    source_security_group_id   = optional(string,"")
    target_security_group_id   = string
    protocol                 = string
    from_port                = number
    to_port                  = number
  }))
    default = {}
}
variable "tags" {
  description = "A map of tags to assign to the security groups."
  type        = map(string)
  default     = {}
}    
    
