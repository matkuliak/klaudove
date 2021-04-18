#!/bin/bash

#tento script odstrani vsetky deploymenty/pody/service/persistent-volumes



kubectl delete -n default deployment web
echo "*Deployment web deleted*"
kubectl delete -n default deployment data
echo "*Deployment data deleted*"
kubectl delete -n default deployment nginx
echo "*Deployment nginx deleted*"
kubectl delete -n default deployment postgres
echo "*Deployment postgres deleted*"
kubectl delete -n default service web
echo "*Service web deleted*"
kubectl delete -n default service nginx
echo "*Service web deleted*"
kubectl delete -n default service postgres
echo "*Service web deleted*"
kubectl delete -n default configmap env
echo "*Service web deleted*"
kubectl get pv | tail -n+3 | awk '{print $1}' | xargs -I{} kubectl patch pv {} -p '{"metadata":{"finalizers": null}}'
echo "*Finalizers edited so deletes don't hang*"
kubectl delete pvc db-data --grace-period=0 --force --wait=false
echo "*PVC db-data deleted*"
kubectl delete pvc nginx-claim0 --grace-period=0 --force --wait=false
echo "*PVC nginx deleted*"
kubectl delete pvc web-data --grace-period=0 --force --wait=false
echo "*PVC web-data deleted*"
echo "------------"
echo "App stopped"
