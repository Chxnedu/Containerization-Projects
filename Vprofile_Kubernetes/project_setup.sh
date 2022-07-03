#! /bin/bash
# a script to setup all the pods, deployments, secrets and all

kubectl get node

kubectl apply -f app-secret.yaml

kubectl get secret

kubectl apply -f vprodbdep.yaml

kubectl get deployment

kubectl get service

sleep 600

kubectl apply -f mcdep.yaml

kubectl get deployment 

kubectl get service

sleep 600

kubectl apply -f rmqdep.yaml

kubectl get deployment

kubectl get service

sleep 600

kubectl apply -f vproappdep.yaml

kubectl get deployment


