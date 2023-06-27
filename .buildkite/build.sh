#!/bin/bash

# Copy the Dockerfile and nginx.conf to the build context
cp docker/Dockerfile .
cp docker/nginx.conf .

# Build the Docker image
docker build -t my-docker-image:latest .

# Save the Docker image as an artifact
docker save my-docker-image:latest -o docker/image.tar.gz







