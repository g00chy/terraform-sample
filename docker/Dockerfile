FROM amazon/aws-cli:latest

RUN yum update -y
RUN yum install -y yum-utils

RUN yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

RUN yum -y install terraform sudo git
RUN curl -s get-fargate-create.turnerlabs.io | sh
