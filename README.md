Minikube Redis Cluster Setup

This contains shell scripts to automate the setup of a Redis cluster using Minikube and Helm. The following instructions guide you through the setup process and the usage of each script.

Steps
1. Cluster Setup

   Run the cluster-setup.sh script to set up Minikube with Podman as the driver and install necessary dependencies. This script installs kubectl, Podman, and Minikube, and starts    Minikube with Podman as the runtime.

   ./cluster-setup.sh
   
2. Helm and Redis Cluster Installation

   Run the helm-redis-cluster-setup.sh script to install Helm, add the Bitnami Helm repository, and deploy a Redis cluster using Helm. This script downloads Helm, adds the Bitnami    Helm repository, installs Redis using Helm, and verifies the installation.

   ./helm-redis-cluster-setup.sh

3. Redis Client Deployment

   Run the redis-client.sh script to deploy a custom Redis client chart that connects to the Redis server in the cluster. This step assumes you have a redis-client-chart directory    containing the necessary deployment files. The script installs the Redis client and connects it to the Redis server deployed in the cluster.

   ./redis-client.sh

4. Set Key in Redis Server

   Run the set_key.sh script to set a key-value pair in the Redis server deployed in the cluster. This script retrieves the necessary information (such as Redis host and password)    and sets a key-value pair in the Redis server using the Redis client.

   ./set_key.sh

5. Get Value from Redis Server

   Run the get-value.sh script to retrieve the value corresponding to the previously set key from the Redis server. This script retrieves the necessary information (such as Redis     host and password) and gets the value for the specified key from the Redis server using the Redis client.

   ./get-value.sh


