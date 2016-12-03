#!/bin/bash -e

if [ -z "$1" ]; then
  echo "Using backup.tar.gz"
else
  echo "Downloading from S3"
  aws s3 cp $1 backup.tar.gz
fi

tar -xzf backup.tar.gz
docker-compose up restore
