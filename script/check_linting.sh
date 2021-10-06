#!/bin/bash

echo "****************************"
echo "**   Check the linting    **"
echo "****************************"

# change dir to worksapce
cd $WORKSPACE

# check linting
docker exec -i flask-practice bash -c "flake8"
