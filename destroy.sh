#!/bin/bash
docker-compose kill
docker-compose rm -f
rm -rf wp-content db-backup
