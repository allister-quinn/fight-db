FROM postgres:15
RUN ls
COPY init.sql /docker-entrypoint-initdb.d