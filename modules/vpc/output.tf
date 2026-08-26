output "peering_id" {
  value = aws_vpc_peering_connection.this.id
}

output "peering_status" {
  value = aws_vpc_peering_connection.this.accept_status
}

output "requester_vpc_id" {
  value = aws_vpc_peering_connection.this.vpc_id
}

output "accepter_vpc_id" {
  value = aws_vpc_peering_connection.this.peer_vpc_id
}