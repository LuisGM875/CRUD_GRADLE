#!/bin/bash
docker pull 529088260251.dkr.ecr.us-east-1.amazonaws.com/spring-api-gradle:latest
docker run -d -p 8080:8080 529088260251.dkr.ecr.us-east-1.amazonaws.com/spring-api-gradle:latest
