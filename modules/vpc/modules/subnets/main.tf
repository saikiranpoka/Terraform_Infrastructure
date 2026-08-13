resource "aws_subnet" "public"{
  count = length(var.public_subnet_cidrs)

  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-public-subnet-${var.availability_zones[count.index]}"
      Environment = var.environment
      Tier        = "public"
    }
  )
}
resource "aws_subnet" "private"{
  count = length(var.private_subnet_cidrs)

  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-private-subnet-${var.availability_zones[count.index]}"
      Environment = var.environment
      Tier        = "private"
    }
  )
}
resource "aws_subnet" "database"{
  count = length(var.database_subnet_cidrs)

  vpc_id            = var.vpc_id
  cidr_block        = var.database_subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = merge(
    var.tags,
    {
      Name        = "${var.environment}-database-subnet-${var.availability_zones[count.index]}"
      Environment = var.environment
      Tier        = "database"
    }
  )
}
