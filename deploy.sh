#!/bin/bash

set -e

echo "Initializing the infrastructure project..."
pushd {SERVICE_HYPHEN_NAME}-service-infrastructure
npm install

echo "Creating ECR repo in AWS..."
npm run cdk deploy repo
export DOCKER_REGISTRY=$(aws cloudformation describe-stacks --stack-name repo | jq --raw-output '.Stacks | .[] | .Outputs | reduce .[] as $i ({}; .[$i.OutputKey] = $i.OutputValue) | .RepositoryURI' | cut -d / -f 1)
popd

echo "Building the server container and pushing to ECR..."
pushd {SERVICE_HYPHEN_NAME}-service-server
aws ecr get-login-password | docker login --username AWS --password-stdin $DOCKER_REGISTRY
docker-compose build
docker-compose push
popd

echo "Deploying the server container to ECS & Fargate in AWS..."
pushd {SERVICE_HYPHEN_NAME}-service-infrastructure
npm run cdk deploy service
popd
