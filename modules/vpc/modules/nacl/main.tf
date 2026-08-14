resource "aws_network_acl" "network_nacl"{
  vpc_id = var.vpc_id

  tags = merge(
    var.tags,
    {
      Name       = var.name
    }
  )
}
resource "network_acl_association" "subnet_association" {
    for_each = toset(var.subnet_ids)
    network_acl_id = aws_network_acl.network_nacl.id
    subnet_id      = each.value
  
}
resource "network_acl_rule" "ingress_rule" {
  for_each = {
    for rule in var.ingress_rules : rule.rule_number => rule
}

  network_acl_id = aws_network_acl.network_nacl.id
  rule_number    = each.value.rule_number
  protocol       = each.value.protocol
  rule_action    = each.value.action
  cidr_block     = each.value.cidr_block
  from_port      = each.value.from_port
  to_port        = each.value.to_port
}
resource "network_acl_rule" "egress_rule" {
  for_each = {
    for rule in var.egress_rules : rule.rule_number => rule
}

  network_acl_id = aws_network_acl.network_nacl.id
  rule_number    = each.value.rule_number
  protocol       = each.value.protocol
  rule_action    = each.value.action
  cidr_block     = each.value.cidr_block
  from_port      = each.value.from_port
  to_port        = each.value.to_port
}
