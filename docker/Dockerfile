FROM amazon/aws-cli:latest

RUN yum update -y
RUN yum install -y yum-utils

RUN yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

RUN yum -y install terraform sudo git
RUN curl -s get-fargate-create.turnerlabs.io | sh

ARG UID
ARG GID
ARG USERNAME

# グループ・ユーザーを追加
RUN groupadd -g ${GID} ${USERNAME} \
  && useradd -u ${UID} -g ${GID} -s /bin/bash -m ${USERNAME}

# コンテナを操作するユーザーをルートから一般ユーザーに変更
USER ${UID}
