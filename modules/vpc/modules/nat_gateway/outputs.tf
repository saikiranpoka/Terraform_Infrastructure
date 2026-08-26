output "nat_gateway_ids" {
  description = "IDs of NAT Gateways"
  value       = aws_nat_gateway.nat_gw[*].id
}
output "nat_gateway_public_ip" {
  description = "Public IPs of NAT Gateways"
  value       = aws_eip.nat_eip[*].public_ip
}
output "nat_eip_allocation_ids" {
  description = "Allocation IDs of NAT Gateway EIPs"
  value       = aws_eip.nat_eip[*].id
}