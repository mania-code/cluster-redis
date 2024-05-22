#!/bin/bash 

helm create ubuntu-pod-chart
cat <<EOF > ubuntu-pod-chart/templates/ubuntu-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: {{ .Release.Name }}-ubuntu-pod
spec:
  containers:
  - name: ubuntu-container
    image: ubuntu:latest
    command: ["/bin/sleep", "infinity"]
EOF
helm install my-ubuntu-pod ./ubuntu-pod-chart

