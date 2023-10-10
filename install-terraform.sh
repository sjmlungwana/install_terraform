#!/bin/bash

# This script is for installing terraform

sudo apt update

sudo apt upgrade

sudo apt-get install wget curl unzip software-properties-common gnupg2 -y

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt-get update -y

sudo apt-get install terraform -y

terraform -v