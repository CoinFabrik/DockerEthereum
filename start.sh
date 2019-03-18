#!/usr/bin/env bash

docker build -t leanbase  ./base/
docker build -t ethnet ./ethnetstat/
docker build -t node1  ./Node1/
