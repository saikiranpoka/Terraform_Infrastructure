output "internet_gateway_ID" {
    description = "The ID of the Internet Gateway."
    value       = aws_internet_gateway.IGW.id
    type        = string
}
output "internet_gateway_arn" {
    description = "The ARN of the Internet Gateway."
    value       = aws_internet_gateway.IGW.arn
    type        = string
}