# app/env to scaffold
app = "g00chy"
environment = "dev"

internal = true
container_port = "80"
replicas = "1"
health_check = "/"
region = "us-east-1"
aws_profile = "default"
saml_role = "terraform_tfstate"
vpc = "vpc"
private_subnets = "subnet-priv1,subnet-priv2"
public_subnets =  "subnet-pub1,subnet-pub2"
tags = {
  application   = "my-app"
  environment   = "dev"
  team          = "my-team"
  customer      = "my-customer"
  contact-email = "totugekiluna@gmail.com"
}