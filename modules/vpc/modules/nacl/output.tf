output "network_acl_ids" {
  description = "Network ACL IDs"
  value = aws_network_acl.network.id
}