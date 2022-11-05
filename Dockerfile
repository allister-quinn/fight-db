FROM postgres
USER postgres
RUN RUN psql -c 'grant all privileges on database "fight_db" to postgres;'
RUN psql -c 'create database fight_db;'
RUN psql -c 'create user fight_user;'
RUN psql -c 'grant all privileges on database "fight_db" to fight_user;'
COPY postgresql.conf /var/lib/postgresql/data/postgresql.conf