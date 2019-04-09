#!/bin/bash

# Remove running containers
docker rm -f Node1 Node2 Ethstat

# Build dependencies
docker-compose build --force-rm leanbase pow

# Build and run containers
docker-compose up -d node1 node2 ethstat
