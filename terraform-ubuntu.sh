#!/bin/bash

# Update the package list and install necessary dependencies
sudo apt update
sudo apt install -y unzip

# Specify the Terraform version you want to install
TERRAFORM_VERSION="1.1.0"

# Download Terraform binary
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Unzip the downloaded binary and move it to /usr/local/bin
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# Clean up downloaded files
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Verify Terraform installation
terraform --version

echo "Terraform ${TERRAFORM_VERSION} has been installed."
