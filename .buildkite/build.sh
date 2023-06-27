#!/bin/bash

set -eu

echo "steps:"

echo "  - command: \"docker build -t my-nginx-image -f docker/Dockerfile ./docker\""
echo "    label: \"Build Nginx\""

if [[ "$BUILDKITE_BRANCH" == "main" ]]; then
  echo "  - wait"
  echo "  - command: \"echo Deploy!\""
  echo "    label: \":rocket:\""
fi


