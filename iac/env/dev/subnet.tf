resource "aws_subnet" "vpc123_pub_pub_1a" {
  vpc_id                          = aws_vpc.vpc_123.id # VPCのIDを指定
  cidr_block                      = "10.10.1.0/24" # サブネットに設定したいCIDRを指定
  assign_ipv6_address_on_creation = "false" # IPv6を利用するかどうかを指定
  map_public_ip_on_launch         = "true" # VPC内インスタンスにパブリックIPアドレスを付与するかを指定
  availability_zone               =  "us-east-1a" # サブネットが稼働するAZを指定

  tags = {
    Name = "vpc123_1a"
  }
}

resource "aws_subnet" "vpc123_pub_1c" {
  vpc_id                          = aws_vpc.vpc_123.id
  cidr_block                      = "10.10.2.0/24"
  assign_ipv6_address_on_creation = "false"
  map_public_ip_on_launch         = "true"
  availability_zone               = "us-east-1c"

  tags = {
    Name = "vpc123_pub_1c"
  }
}

resource "aws_subnet" "vpc123_priv_1a" {
  vpc_id                          = aws_vpc.vpc_123.id # VPCのIDを指定
  cidr_block                      = "10.10.3.0/24" # サブネットに設定したいCIDRを指定
  assign_ipv6_address_on_creation = "false" # IPv6を利用するかどうかを指定
  map_public_ip_on_launch         = "true" # VPC内インスタンスにパブリックIPアドレスを付与するかを指定
  availability_zone               =  "us-east-1a" # サブネットが稼働するAZを指定

  tags = {
    Name = "vpc123_priv_1a"
  }
}

resource "aws_subnet" "vpc123_priv_1c" {
  vpc_id                          = aws_vpc.vpc_123.id
  cidr_block                      = "10.10.4.0/24"
  assign_ipv6_address_on_creation = "false"
  map_public_ip_on_launch         = "true"
  availability_zone               = "us-east-1c"

  tags = {
    Name = "vpc123_priv_1c"
  }
}