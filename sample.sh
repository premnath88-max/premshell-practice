#!/bin/bash


if [ $# -eq 0 ]; then
  echo "No arguments provided"
  exit 1
fi

for file in "$@"; do
  echo "Processing $file"
done