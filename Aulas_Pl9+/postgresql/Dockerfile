# 
# Bases de Dados 2020/2021
# Trabalho Prático
#

FROM library/postgres


ENV POSTGRES_USER aulaspl
ENV POSTGRES_PASSWORD aulaspl
ENV POSTGRES_DB tccp


#COPY criaTabelas.sql /docker-entrypoint-initdb.d/
COPY tpcc/tpcc_create.sql /docker-entrypoint-initdb.d/
COPY tpcc/tpcc-postgres-ddl.sql /docker-entrypoint-initdb.d/
COPY tpcc/customer.csv /docker-entrypoint-initdb.d/
COPY tpcc/district.csv /docker-entrypoint-initdb.d/
COPY tpcc/history.csv /docker-entrypoint-initdb.d/
COPY tpcc/item.csv /docker-entrypoint-initdb.d/
COPY tpcc/new_order.csv /docker-entrypoint-initdb.d/
COPY tpcc/oorder.csv /docker-entrypoint-initdb.d/
COPY tpcc/order_line.csv /docker-entrypoint-initdb.d/
COPY tpcc/stock.csv /docker-entrypoint-initdb.d/
COPY tpcc/warehouse.csv /docker-entrypoint-initdb.d/
COPY tpcc/tpcc_restore.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
