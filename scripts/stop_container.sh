#!/bin/bash
docker stop $(docker ps -q --filter ancestor=spring-api-gradle)
docker rm $(docker ps -a -q --filter ancestor=spring-api-gradle)
