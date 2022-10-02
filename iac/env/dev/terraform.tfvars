# app/env to scaffold
app = "g00chy-sample-ecs"
environment = "dev"

internal = true
container_port = "80"
replicas = "1"
health_check = "/"
region = "us-east-1"
aws_profile = "default"
saml_role = "terraform_tfstate"
vpc = "vpc-04300eaaff4b0e9c9"
private_subnets = "subnet-0a03980a4e7740ad1,subnet-0f8742dddcf0ceb31"
public_subnets =  "subnet-0ac7de5971b0085e9,subnet-0e1078f53afcd67f8"
tags = {
  application   = "my-app"
  environment   = "dev"
  team          = "my-team"
  customer      = "my-customer"
  contact-email = "totugekiluna@gmail.com"
}