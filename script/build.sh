#!/bin/bash

echo "****************************"
echo "**   Building the docker  **"
echo "****************************"


# change dir to worksapce
cd $WORKSPACE

# up the build
docker-compose up --build -d
