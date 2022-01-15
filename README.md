# {TEMPLATE_SERVICE_NAME} Service

![](logo/hypto_grpc_kotlin.png)

## Overview

This directory contains a starter gRPC service written in Kotlin.
You can find detailed instructions for building and running example from below

## {TEMPLATE_SERVICE_NAME} Service Deployer

- ** Deployer ** for Kotlin and gRPC on AWS. This project was created from a template. 
- For details, see the template [project on github](https://gitlab.com/hwslabs/starter-service).

## Package Structure

The starter sources are organized into the following top-level folders and files:

- [{TEMPLATE_SERVICE_HYPHEN_NAME}-service-server]({TEMPLATE_SERVICE_HYPHEN_NAME}-service-server): Server that runs on a Kotlin coroutine inside a docker container.
- [{TEMPLATE_SERVICE_HYPHEN_NAME}-infrastructure]({TEMPLATE_SERVICE_HYPHEN_NAME}-infrastructure): Infrastructure-as-code to deploy and run server remotely on AWS.
- [{TEMPLATE_SERVICE_HYPHEN_NAME}-service-kotlin-client]({TEMPLATE_SERVICE_HYPHEN_NAME}-service-kotlin-client): Client that runs on a Kotlin coroutine

## Deploy and destroy from macOS
<details>
<summary> Run the server locally </summary>

Follow the instructions from the server package to run locally

</details>
<details>
<summary> Run the server remotely </summary>

Follow the instructions from the infrastructure package to deploy and destroy your infrastructure

</details>
<details>
<summary> Run the client </summary>

Follow the instructions from the client package to run the client test.

</details>


