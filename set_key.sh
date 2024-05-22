#!/bin/bash

REDIS_HOST=$(kubectl get svc | grep master | awk '{print $1}')
REDIS_PASSWORD=$(kubectl get secret my-redis -o yaml | awk '/redis-password:/ {print $2}' | base64 -d)
REDIS_KEY="OxKey"
REDIS_VALUE="OxValue"
kubectl exec -it my-ubuntu-pod-ubuntu-pod  -- bash -c  "apt update;apt install redis-tools -y;redis-cli -h $REDIS_HOST -a $REDIS_PASSWORD SET $REDIS_KEY $REDIS_VALUE"
