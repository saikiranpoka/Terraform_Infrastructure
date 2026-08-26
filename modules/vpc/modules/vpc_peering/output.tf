output "peering_id" {
  value = aws_vpc_peering_connection.main.id
}

output "peering_status" {
  value = aws_vpc_peering_connection.main.accept_status
}

output "requester_vpc_id" {
  value = aws_vpc_peering_connection.main.vpc_id
}

output "accepter_vpc_id" {
  value = aws_vpc_peering_connection.main.peer_vpc_id
}
