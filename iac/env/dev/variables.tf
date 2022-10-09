/*
 * variables.tf
 * Common variables to use in various Terraform files (*.tf)
 */

# The AWS region to use for the dev environment's infrastructure
variable "region" {
  default = "us-east-1"
}

# Tags for the infrastructure
variable "tags" {
  type = map(string)
}

# The application's name
variable "app" {
}

# The environment that is being built
variable "environment" {
}

# The port the container will listen on, used for load balancer health check
# Best practice is that this value is higher than 1024 so the container processes
# isn't running at root.
variable "container_port" {
  default ="80"
}

# The port the load balancer will listen on
variable "lb_port" {
  default = "80"
}

# The load balancer protocol
variable "lb_protocol" {
  default = "HTTP"
}

# Network configuration

# The VPC to use for the Fargate cluster
variable "vpc" {
  default = "vpc"
}

# The private subnets, minimum of 2, that are a part of the VPC(s)
variable "private_subnets" {
  default = "g00chy-dev-private-1,g00chy-dev-private-2"
}

# The public subnets, minimum of 2, that are a part of the VPC(s)
variable "public_subnets" {
  default = "g00chy-dev-public-1,g00chy-dev-public-2"
}

variable "cidr_vpc" {
  default = "10.255.0.0/16"
}

variable "cidr_public" {
  default = [
    "10.255.1.0/24",
    "10.255.2.0/24"
  ]
}
variable "cidr_private" {
  default = [
    "10.255.10.0/24",
    "10.255.11.0/24"
  ]
}
variable "cidr_secure" {
  default = [
    "10.255.21.0/24",
    "10.255.22.0/24"
  ]
}