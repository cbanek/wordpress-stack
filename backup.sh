#!/bin/bash -e
docker-compose up backup
tar -czf backup.tar.gz db-backup wp-content

if [ -z "$1" ]; then
  echo "Made backup.tar.gz"
else
  echo "Uploading to S3"
  aws s3 mv backup.tar.gz $1
fi

rm -rf db-backup/*
