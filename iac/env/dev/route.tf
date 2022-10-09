resource "aws_route_table" "private_route_table" {
  count  = length(aws_subnet.private)
  vpc_id = aws_vpc.vpc.id
}
resource "aws_route_table_association" "app_private" {
  count          = length(aws_subnet.private)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}
resource "aws_route" "private_gateway" {
  count  = length(aws_subnet.private)
  route_table_id = aws_route_table.public.id
  gateway_id = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table" "public_route_table" {
  count  = length(aws_subnet.public)
  vpc_id = aws_vpc.vpc.id
}
resource "aws_route_table_association" "app_public" {
  count          = length(aws_subnet.public)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}
resource "aws_route" "public_gateway" {
  count  = length(aws_subnet.public)
  route_table_id = aws_route_table.public.id
  gateway_id = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_nat_gateway" "nat" {
  count = length(aws_subnet.private)
  subnet_id     = aws_subnet.private[count.index].id
  allocation_id = aws_eip.ecs_private[count.index].id
  tags = {
    Name = "ecs-private-gateway"
  }
}
resource "aws_eip" "ecs_private" {
  vpc = true
  count = length(aws_subnet.private)

  tags = {
    Name = "ecs-private-1"
  }
}
