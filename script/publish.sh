#!/bin/bash

# Read the variables from file
export USERNAME=$(sed -n '1p' /tmp/.auth)
export PASSWORD=$(sed -n '2p' /tmp/.auth)
export BRANCH=$(sed -n '3p' /tmp/.auth)

# Navigate to project and pull from github
cd flask_practice
git checkout $BRANCH
git pull https://$USERNAME:$PASSWORD@github.com/lalitvasoya/flask_practice.git $BRANCH 

echo $BRANCH
echo $USERNAME
echo $PASSWORD

# Build and up the project's docker
docker-compose up --build -d
