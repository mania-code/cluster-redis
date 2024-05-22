#!/bin/bash

bash minikube_install.sh

sleep 300

bash redis_server.sh

sleep 150

bash helm_ubuntu.sh

sleep 60

bash set_key.sh

sleep 10

bash output_key.sh

