Minikube Redis Cluster Setup

This repository contains shell scripts to automate the setup of a Redis cluster using Minikube and Helm. The following instructions guide you through the setup process and the usage of each script.

Prerequisites

Minikube installed and configured.
Helm v3.x installed.
Podman installed (or Docker, if preferred).
Steps

1. Cluster Setup
Run the cluster-setup.sh script to set up Minikube with Podman as the driver and install necessary dependencies.

bash
Copy code
./cluster-setup.sh
2. Helm and Redis Cluster Installation
Run the helm-redis-cluster-setup.sh script to install Helm, add the Bitnami Helm repository, and deploy a Redis cluster using Helm.

bash
Copy code
./helm-redis-cluster-setup.sh
3. Redis Client Deployment
Run the redis-client.sh script to deploy a custom Redis client chart that connects to the Redis server in the cluster. This step assumes you have a redis-client-chart directory containing the necessary deployment files.

bash
Copy code
./redis-client.sh
4. Set Key in Redis Server
Run the set_key.sh script to set a key-value pair in the Redis server deployed in the cluster.

bash
Copy code
./set_key.sh
5. Get Value from Redis Server
Run the get-value.sh script to retrieve the value corresponding to the previously set key from the Redis server.

bash
Copy code
./get-value.sh
Notes

Ensure Minikube is running before executing the scripts.
Adjust scripts or configurations as needed for your environment.
Remember to clean up resources after testing or when no longer needed.
