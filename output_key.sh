#!/bin/bash

REDIS_HOST=$(kubectl get svc | grep master | awk '{print $1}')
REDIS_PASSWORD=$(kubectl get secret my-redis -o yaml | awk '/redis-password:/ {print $2}' | base64 -d)
REDIS_KEY="OxKey"
kubectl exec -it my-ubuntu-pod-ubuntu-pod  -- bash -c  "redis-cli -h $REDIS_HOST -a $REDIS_PASSWORD GET $REDIS_KEY"
