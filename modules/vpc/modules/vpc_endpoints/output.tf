output "vpc_end_point_id" {
  description = "The IDs of the VPC endpoints."
  value       = aws_vpc_endpoint.vpc_endpoints.id
}
output "vpc_endpoint_dns_entries" {
  description = "The DNS entries for the VPC endpoints."
  value       = aws_vpc_endpoint.vpc_endpoints.dns_entries
}