#!/usr/bin/env bash
mvn clean package
docker-compose -f local-docker-compose.yml up --build