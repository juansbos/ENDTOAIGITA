## Docker setup in EC2 commands run
# Optimal
sudo apt-get update -y
sudo apt-get upgrade
# Required
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
newgrp docker
## Configure EC2 as self-hosted runner:

## Setup GitHub secrets:

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_REGION = us-east-1
AWS_ECR_LOGIN_URI = demo >>...
south-1.amazonaws.com

ECR_RESPOSITORY_NAME = simple-app
