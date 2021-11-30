#!/bin/bash

echo "Tearing down the server infrastructure in AWS..."
pushd {TEMPLATE_SERVICE_HYPHEN_NAME}-service-infrastructure
npm install
npm install -g ts-node
npm install -g aws-cdk
cdk destroy service --force

echo "Tearing down the repository infrastructure in AWS..."
echo "Note: You may need to manually delete the ECR repository in your AWS account if this fails..."
cdk destroy repo --force
aws ecr delete-repository --repository-name {TEMPLATE_SERVICE_HYPHEN_NAME}-service --force

echo "Cleaning up infra package..."
npm run clean
popd
