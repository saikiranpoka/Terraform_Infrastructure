resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-public-rt"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
  
}
resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.internet_gateway_id
}
resource "aws_route_table_association" "public" {
  count          = length(var.public_subnet_ids)
  subnet_id      = var.public_subnet_ids[count.index]
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-private-rt-${count.index+1}"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
}
resource "aws_route" "private_internet_access" {
  count                  = length(var.nat_gateway_ids)
  route_table_id         = aws_route_table.private[count.index].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = var.nat_gateway_ids[count.index]
}
resource "aws_route_table_association" "private" {
  count          = length(var.private_subnet_ids)
  subnet_id      = var.private_subnet_ids[count.index]
  route_table_id = aws_route_table.private[count.index].id
}
resource "aws_route_table" "database" {
  vpc_id = var.vpc_id

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-database-rt-${count.index+1}"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
}
resource "aws_route_table_association" "database" {
  count          = length(var.database_subnet_ids)
  subnet_id      = var.database_subnet_ids[count.index]
  route_table_id = aws_route_table.database[count.index].id
}
