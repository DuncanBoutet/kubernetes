#!/usr/bin/env bash

echo "Delete de l'ingress"
kubectl delete -n standard -f ingress.yaml
echo "Delete de l'issuer de certificat"
kubectl delete -n standard -f clusterissuer.yaml
echo "Delete de l'auto scaling"
kubectl delete -n standard -f hpa.yaml
echo "Delete du service StateLess pour fastapi"
kubectl delete -n standard -f fastapi.yaml
echo "Delete du service StateLess pour pgadmin"
kubectl delete -n standard -f pgadmin.yaml
echo "Delete du service StateFull pour la base de donnée"
kubectl delete -n standard -f bdd.yaml
echo "Delete des secrets"
kubectl delete -n standard -f secrets.yaml
echo "Delete du PVC de 10Gi"
kubectl delete -n standard -f storage.yaml
echo "Delete du Namespace"
kubectl delete -n standard -f namespace.yaml