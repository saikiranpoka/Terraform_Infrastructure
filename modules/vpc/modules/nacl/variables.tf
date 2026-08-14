variable "name" {   
  description = "Name of the NACL"
  type        = string
}
variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}
variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the NACL."
  type        = list(string)
}
variable "ingress_rules" {
  description = "A list of ingress rules for the NACL."
  type        = list(object({
    rule_number = number
    protocol    = string
    action      = string
    cidr_block  = string
    from_port   = number
    to_port     = number
  }))
  default = []
}
variable "egress_rules" {
  description = "A list of egress rules for the NACL."
  type        = list(object({
    rule_number = number
    protocol    = string
    action      = string
    cidr_block  = string
    from_port   = number
    to_port     = number
  }))
  default = []
}
variable "tags" {
  description = "A map of tags to assign to the NACL."
  type        = map(string)
  default     = {}
}

