#!/usr/bin/env bash

echo "Création du Namespace"
kubectl apply -f namespace.yaml
echo "Création du PVC de 10Gi"
kubectl apply -f storage.yaml
echo "Création des secrets, actuellement uniquement pour les mdp de la BDD et de pgadmin"
kubectl apply -f secrets.yaml
echo "Création du service StateFull pour la base de donnée ( on veux du persistant )"
kubectl apply -f bdd.yaml
echo "Création du service StateLess pour pgadmin, ça peut être du jettable"
kubectl apply -f pgadmin.yaml
echo "Création du service StateLess pour fastapi, ça peut être du jettable"
kubectl apply -f fastapi.yaml
echo "Création de l'auto scaling, avec un réglage mini 3 pods, max 6 pods, limit 70% cpu"
kubectl apply -f hpa.yaml
echo "Création de l'issuer de certificat"
kubectl create -f clusterissuer.yaml
echo "Création de l'ingress, afin de rendre notre application disponible sur le DNS"
kubectl apply -f ingress.yaml