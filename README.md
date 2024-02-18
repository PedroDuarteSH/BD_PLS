# Bases de Dados - Fichas Práticas

Com o docker instalado basta executar o sh script


## Configurar o PGADMIN

Basta esperar que inicie, para fazer login, deve usar:
  ## Login into PGADMIN
  - **Username**: bd_aulas@dei.pt
  - **Password**: bd_aulas

  ## Adicionar servidor no PGADMIN
  - **Name**: Choose a good name :)
  - **User**: aulaspl
  - **Password**: aulaspl
  - **Host**: host.docker.internal

  ## Conectar PSQL pela consola:
  - **1**: Ir ao docker desktop
  - **2**: Abrir consola do docker desktop db_fichas
  - **3**: Executar o comando:
    - psql -h host.docker.internal -p 5432 -d dbfichas -U aulaspl
    - aulaspl


### Adicionadas resolucoes a 14/02/2022