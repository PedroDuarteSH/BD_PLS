# 
# Bases de Dados 2020/2021
# Trabalho Prático
#

FROM library/postgres


ENV POSTGRES_USER aulaspl
ENV POSTGRES_PASSWORD aulaspl
ENV POSTGRES_DB dbfichas


COPY criaTabelas.sql /docker-entrypoint-initdb.d/
COPY insereDados.sql /docker-entrypoint-initdb.d/


EXPOSE 5432
