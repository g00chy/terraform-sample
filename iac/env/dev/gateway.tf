resource "aws_internet_gateway" "vpc123_igw" {
  vpc_id = aws_vpc.vpc_123.id # VPCのIDを指定

  tags = {
    Name  = "vpc123_igw"
  }
}