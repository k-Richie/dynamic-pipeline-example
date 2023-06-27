#!/bin/bash

set -eu

echo "steps:"


find docker/* -type d | while read -r D; do
  echo "  - command: \"docker build -t my-image:$D $D\""
  echo "    label: \"$(basename "$D")\""
done


if [[ "$BUILDKITE_BRANCH" == "main" ]]; then
  echo "  - wait"
  echo "  - command: \"echo Deploy!\""
  echo "    label: \":rocket:\""
fi
