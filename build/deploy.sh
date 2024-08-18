#!/bin/bash

echo "Deploy.sh has started"
echo "===========================>"
docker-compose up -d
if [ $? -eq 0 ]; then
     echo "Deploy has completed"
else 
     echo "Deploy failed"
fi
echo "===========================>"
echo "tagging started"
docker tag harsanskumaran/dev:v1 harsanskumaran/prod:v1
if [ $? -eq 0 ]; then
     echo "tagged"
else 
     echo "tagged failed"
fi
echo "===========================>"
docker login -u $docker_login -p $docker_login
echo "===========================>"
docker push harsanskumaran/prod:v1
if [ $? -eq 0 ]; then
     echo "image pushed to prod private rep"
else 
     echo "error to push in private prod repo"
fi

