#!/bin/bash
# 
# Bases de Dados 2020/2021
# Trabalho Prático
#

image="bd-psql"
container="db"

echo "-- Building --"
docker   build  -t  $image   .
