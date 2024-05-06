#!/bin/bash

# Download and install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Install Podman
sudo dnf install -y podman   # For Fedora, CentOS, RHEL
#sudo apt-get install -y podman   # For Debian, Ubuntu

# Download Minikube latest release
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm

# Install Minikube from the downloaded RPM package
sudo rpm -Uvh minikube-latest.x86_64.rpm

# Start Minikube with Podman as the driver
minikube start --driver=podman
