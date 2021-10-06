#!/bin/bash

echo "****************************"
echo "**   Deploying on server  **"
echo "****************************"

# share the environment variables and creadential
echo $1 > /tmp/.auth
echo $2 >> /tmp/.auth
# echo $GIT_LOCAL_BRANCH >> /tmp/.auth
echo "feature/implement_docker" >> /tmp/.auth

# transfer file from jenkins machine to trager machine
scp -i /pem/virtual_box_ubuntu /tmp/.auth lalitvasoya@192.168.56.103:/tmp/
scp -i /pem/virtual_box_ubuntu /script/publish.sh lalitvasoya@192.168.56.103:/tmp/
ssh -i /pem/virtual_box_ubuntu lalitvasoya@192.168.56.103 "bash /tmp/publish.sh"

echo "****************************"
echo "**   Deployed on server  **"
echo "****************************"
