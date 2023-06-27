#!/bin/bash

set -eu

echo "steps:"

# Add dynamic steps based on Dockerfiles in the "docker" directory
find docker -name Dockerfile | while read -r DOCKERFILE; do
  IMAGE_NAME=$(basename "$(dirname "$DOCKERFILE")")
  echo "  - command: \"docker build -t my-image:$IMAGE_NAME -f $DOCKERFILE .\""
  echo "    label: \"$IMAGE_NAME\""
done





