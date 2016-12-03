#!/bin/bash -e
mkdir -p db-backup wp-content
docker-compose up -d web mysql
