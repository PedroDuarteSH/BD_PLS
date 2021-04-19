#!/bin/bash
# 
# Bases de Dados 2020/2021
# Trabalho Prático
#
# Authors: 
#   Nuno Antunes <nmsa@dei.uc.pt>
#   BD 2021 Team - https://dei.uc.pt/lei/
#   University of Coimbra

image="bd-psql"
container="aulas_pl"


echo "-- Running --"
docker run --name $container -p 5432:5432  $image 
