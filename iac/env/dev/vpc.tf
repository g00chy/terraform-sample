resource "aws_vpc" "vpc_123" {
  cidr_block                       = "10.10.0.0/16" # VPCに設定したいCIDRを指定
  enable_dns_support               = "true" # VPC内でDNSによる名前解決を有効化するかを指定
  enable_dns_hostnames             = "true" # VPC内インスタンスがDNSホスト名を取得するかを指定
  instance_tenancy                 = "default" # VPC内インスタンスのテナント属性を指定
  assign_generated_ipv6_cidr_block = "false" # IPv6を有効化するかを指定

  tags = {
    Name  = "vpc-123"
  }
}