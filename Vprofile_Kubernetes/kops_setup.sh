#! /bin/bash
# script to setup your kops server

sudo apt update && sudo apt install awscli

aws --version

aws configure

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

kubectl version --client

curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64

chmod +x kops-linux-amd64

sudo mv kops-linux-amd64 /usr/local/bin/kops

kops --help

export KOPS_STATE_STORE=s3://vprofile-kops-chxn

kops create cluster --name=kubevpro.chxnedu.com --state=s3://vprofile-kops-chxn --zones=us-east-1a,us-east-1b --node-count=2 --node-size=t2.micro --master-size=t2.micro --dns-zone=kubevpro.chxnedu.com

git clone https://github.com/Chxnedu/Containerization-Projects.git

kops update cluster --name=kubevpro.chxnedu.com --yes

kops export kubecfg --admin

sleep 900

kops validate cluster

kubectl get node
