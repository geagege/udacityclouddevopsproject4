#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=udacitycourseqwert/project4
# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f ./kubernetes/deployment.yml

# Step 3:
# List kubernetes pods
kubectl get po 
# Step 4:
# Forward the container port to a host
kubectl apply -f ./kubernetes/service.yml
kubectl get svc
kubectl port-forward svc/project4 8000:80
