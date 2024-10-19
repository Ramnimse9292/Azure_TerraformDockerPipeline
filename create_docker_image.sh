#!/bin/bash

# Change to the directory containing the Dockerfile
cd "$(dirname "$0")"

# Build the Docker image
docker build -t my_docker_image:latest .
