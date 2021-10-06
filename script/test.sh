#!/bin/bash


echo "****************************"
echo "**   Testing the project  **"
echo "****************************"

# change dir to worksapce
cd $WORKSPACE

# check linting
docker exec -i flask-practice bash -c "pytest"
