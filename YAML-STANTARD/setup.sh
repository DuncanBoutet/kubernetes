#!/usr/bin/env bash

kubectl apply -f namespace.yaml
kubectl apply -f pvc.yaml
kubectl apply -f secrets.yaml
kubectl apply -f bdd.yaml
kubectl apply -f pgadmin.yaml
kubectl apply -f fastapi.yaml
kubectl apply -f hpa.yaml
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.13.3/cert-manager.yaml
kubectl apply -f clusterissuer.yaml
kubectl apply -f ingress.yaml