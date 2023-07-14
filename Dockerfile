FROM postgres:15.3-alpine3.18 AS production
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB dvdrental
COPY ./data/dvdrental.tar /tmp/
COPY ./data/init.sh /docker-entrypoint-initdb.d/

