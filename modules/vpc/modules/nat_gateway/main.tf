resource "aws_eip" "nat_eip" {
  count = length(var.public_subnet_ids)
  domain = "vpc"

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-nat-eip-${count.index + 1}"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
}
resource "aws_nat_gateway" "nat_gw" {
  count = length(var.public_subnet_ids)
  allocation_id = aws_eip.nat_eip[count.index].id
  subnet_id     = var.public_subnet_ids[count.index]

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-nat-gw-${count.index + 1}"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
  depends_on = [aws_eip.nat_eip]
}
