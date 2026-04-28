#!/bin/bash

ENV=$1
ACTION=$2

if [ $# -ne 2 ]; then
  echo "Usage: ./tf_runner.sh <environment> <plan|apply|destroy>"
  exit 1
fi

if [ ! -d "../environments/$ENV" ]; then
  echo "not a existing env dir"
  exit 1
fi

case $ACTION in
  plan|apply|destroy)
    ;;

  *)
    echo "Error: Invalid Action $ACTION"
    exit 1
    ;;
esac


command -v terraform &>/dev/null || {
  echo "Terraform is not installed"
  exit 1
}

command -v aws &>/dev/null || {
  echo "AWS CLI is not installed"
  exit 1
}

command -v aws sts get-caller-identity &>/dev/null || {
  echo "AWS Credentials are not working"
  exit 1
}
