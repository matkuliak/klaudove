#!/bin/bash

#tento script pripravi a spusti vsetko, po jeho ukonceni je aplikacia beziaca a funkcna
#predpoklada sa ze kubectl a minikube su spustene

echo "*Starting setup*" 

echo "*Deploying postgres*"
kubectl apply -f postgres-deployment.yaml
echo "*Deploying nginx*"
kubectl apply -f nginx-deployment.yaml
echo "*Deploying data*"
kubectl apply -f data-deployment.yaml
echo "*Deploying web*"
kubectl apply -f web-deployment.yaml
echo "*Deploying configmap*"
kubectl apply -f env-configmap.yaml
echo "*Done*" 