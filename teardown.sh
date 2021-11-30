#!/bin/bash

echo "Tearing down the server infrastructure in AWS..."
pushd {SERVICE_HYPHEN_NAME}-service-infrastructure
npm install
npm run cdk destroy service

echo "Tearing down the repository infrastructure in AWS..."
echo "Note: You may need to manually delete the ECR repository alone in your AWS account..."
npm run cdk destroy repo

echo "Cleaning up infra package..."
npm run clean
popd
