#!/bin/bash

# Define the URL of the file to download
URL="https://get.helm.sh/helm-v3.14.4-linux-amd64.tar.gz"

# Define the filename
FILENAME="helm-v3.14.4-linux-amd64.tar.gz"

# Download the file
echo "Downloading $FILENAME..."
wget "$URL" -O "$FILENAME"

# Check if download was successful
if [ $? -eq 0 ]; then
    echo "Download successful."

    # Extract the contents of the tarball
    echo "Extracting $FILENAME..."
    tar -zxvf "$FILENAME"

    # Move the helm binary to /usr/local/bin
    echo "Moving helm binary to /usr/local/bin..."
    sudo mv linux-amd64/helm /usr/local/bin/helm

    # Check if move was successful
    if [ $? -eq 0 ]; then
        echo "Helm installation completed successfully."

        # Add bitnami repo
        echo "Adding Bitnami Helm repository..."
        helm repo add bitnami https://charts.bitnami.com/bitnami

        # Install my-redis chart from Bitnami
        echo "Installing my-redis chart from Bitnami..."
        helm install my-redis bitnami/redis

        # Check if installation was successful
        if [ $? -eq 0 ]; then
            echo "Redis installation completed successfully."
        else
            echo "Error: Failed to install Redis chart."
            exit 1
        fi

    else
        echo "Error: Failed to move helm binary to /usr/local/bin."
        exit 1
    fi

else
    echo "Error: Failed to download $FILENAME."
    exit 1
fi