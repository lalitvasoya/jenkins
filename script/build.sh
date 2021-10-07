#!/bin/bash

echo "****************************"
echo "**   Building the docker  **"
echo "****************************"

echo '${WORKSPACE}'

# change dir to worksapce
cd $WORKSPACE

# up the build
docker-compose up --build -d
