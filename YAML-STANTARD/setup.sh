#!/usr/bin/env bash

kubectl apply -f namespace.yaml
kubectl apply -f storage.yaml
kubectl apply -f secrets.yaml
kubectl apply -f bdd.yaml
kubectl apply -f pgadmin.yaml
kubectl apply -f fastapi.yaml
kubectl apply -f hpa.yaml
kubectl wait --for=condition=Ready pod -l app=cert-manager --timeout=300s
kubectl apply -f clusterissuer.yaml
kubectl apply -f ingress.yaml