output "pubic_subnet_ids" {
  description = "IDs of public subnet"
  value       = aws_subnet.public[*].id
}
output "private_subnet_ids" {
  description = "IDs of private subnet"
  value       = aws_subnet.private[*].id
}
output "database_subnet_ids" {
  description = "IDs of database subnet"
  value       = aws_subnet.database[*].id
}
output "public_subnet_azs" {
  description = "Availability of public subnet  zones "
  value       = aws_subnet.public[*].availability_zone
}
output "private_subnet_azs" {
  description = "Availability of private subnet zones"
  value       = aws_subnet.private[*].availability_zone
}
output "database_subnet_azs" {
  description = "Availability of database subnet zones"
  value       = aws_subnet.database[*].availability_zone
}