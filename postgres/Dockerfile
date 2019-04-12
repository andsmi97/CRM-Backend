FROM postgres:10.3

ADD /tables/ /docker-entrypoint-initdb.d/tables/
ADD /seed/ /docker-entrypoint-initdb.d/seed/
ADD /procedures/ /docker-entrypoint-initdb.d/procedures/
ADD deploy_schemas.sql /docker-entrypoint-initdb.d/