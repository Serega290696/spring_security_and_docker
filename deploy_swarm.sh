#!/bin/bash
echo -n "Enter Dockerhub password: "
read -s inputpsw
docker login -u "serega290696" -p $inputpsw &&
mvn clean install &&
docker build -t redis-java-app:latest . &&
#docker login -u serega290696 &&
docker tag redis-java-app:latest serega290696/redis-java-app:latest &&
docker push serega290696/redis-java-app &&
echo "Available nodes:" &&
docker node ls &&
echo "Deploy swarm. . ." &&
docker stack deploy -c docker-compose.yml app_swarm &&
echo "=============================================================== " &&
echo "                      Swarm deploy successful " &&
echo "=============================================================== " &&
echo "" &&
echo "============================ Stack: =========================== " &&
docker stack ls &&
echo "" &&
echo "============================ Services: ======================== " &&
docker service ls &&
echo "" &&
echo "============================ Processes: ======================== " &&
docker ps