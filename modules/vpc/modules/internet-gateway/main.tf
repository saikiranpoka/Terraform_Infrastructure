resource "aws_internet_gateway" "IGW" {
  vpc_id = var.vpc_id

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-igw"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
}