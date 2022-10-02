resource "aws_route_table" "vpc_123_rt" {
  vpc_id = aws_vpc.vpc_123.id # VPCのIDを指定

  # 外部向け通信を可能にするためのルート設定
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc123_igw.id
  }

  tags = {
    Name  = "vpc_123_rt"
  }
}