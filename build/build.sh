#!/bin/bash

echo "Build.sh is started"

# Docker login
#docker login || { echo "Docker login failed"}

# Build the Docker image
docker build -f Dockerfile.yaml -t app1:v1 .
if [ $? -eq 0 ]; then
    echo "Build image successfully"
else
    echo "Build failed"
fi

# Tag the Docker image
docker tag app1:v1 harsanskumaran/dev:v1
if [ $? -eq 0 ]; then
    echo "Image tagged successfully"
else
    echo "Image tagging failed"
fi

# Push the Docker image to the repository
docker push harsanskumaran/dev:v1
if [ $? -eq 0 ]; then
    echo "Docker images pushed to dev repo successfully"
else
    echo "Docker push failed"
fi
