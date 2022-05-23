# FROM docker:18.09-dind
#FROM golang:1-alpine3.10
# FROM yobasystems/alpine-docker:dind
# FROM google/cloud-sdk:alpine
FROM dgrlabs/pipeline-dind:v0.1


# FROM alpine:3.15.0

RUN apk add --update --no-cache \
go \
openjdk8 \
maven \ 
#python3 \
#curl \
which \
#bash \
openssl \
wget \
tar \
jq \
zip \
unzip \
# py3-pip \
# && pip3 install --upgrade pip \
# && pip3 install --no-cache-dir \
# awscli \
&& rm -rf /var/cache/apk/*

#RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/google-cloud-sdk/bin

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl" && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl

# RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# chmod +x ./kubectl \
# sudo mv ./kubectl /usr/local/bin/kubectl \
# kubectl version --client

# RUN curl -fsSL -o get_helm.sh "https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3" && chmod 700 get_helm.sh && ./get_helm.sh
# RUN chmod 700 get_helm.sh
# RUN ./get_helm.sh


#docker logout
#docker tag arsaphone/xldevops:withdgrlabs xldevops/pipeline-runner:v0.3
#docker push