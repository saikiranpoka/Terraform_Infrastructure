output "public_route_table_id" {
  description = "The ID of the public route table."
  value       = aws_route_table.public.id
  type        = string
}
output "private_route_table_id" {
  description = "The ID of the private route table."
  value       = aws_route_table.private.id
  type        = string
}
output "database_route_table_id" {
  description = "The ID of the database route table."
  value       = aws_route_table.database.id
  type        = string
}