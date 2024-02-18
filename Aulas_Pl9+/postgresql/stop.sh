#!/bin/bash
# 
# Bases de Dados 2020/2021
# Trabalho Prático
#

image="bd-psql"
container="aulas_pl"



docker stop $container
docker rm $container