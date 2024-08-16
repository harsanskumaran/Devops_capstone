#!bin/bash

echo "Build.sh is started"
docker build -t app1:v1 .
echo "build image successfully"
docker tag app1:v1 harsanskumaran/dev:v1
docker push harsanskumaran/dev:v1
echo "Docker images pushed to dev repo successfully"

