#!/bin/bash
# 
# Bases de Dados 2020/2021
# Trabalho Prático


#
# ATTENTION: This will stop and delete all the running containers
# Use it only if you are not using docker for other ativities
#
#docker rm $(docker stop $(docker ps -a -q)) 


# add  -d  to the command below if you want the containers running in background without logs
docker-compose  -f docker-compose-aulas-pl.yml up --build