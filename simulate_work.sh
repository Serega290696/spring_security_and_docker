#!/bin/bash
mvn package && java -jar target/learning_spring_with_docker.jar
curl localhost:8080/health
# {"status":"UP","diskSpace":{"status":"UP","total":397635555328,"free":328389529600,"threshold":10485760}}}
curl -X POST localhost:8080/shutdown
# {"timestamp":1401820343710,"error":"Method Not Allowed","status":405,"message":"Request method 'POST' not supported"}