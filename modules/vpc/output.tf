output "vpc_id" {
  description = "The ID of the VPC." 
  value = aws_vpc.vpc.id
  type  = string
}
output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
  description = "The CIDR block of the VPC."
}
output "vpc_arn" {
  description = "The ARN of the VPC."  
  value = aws_vpc.vpc.arn
}