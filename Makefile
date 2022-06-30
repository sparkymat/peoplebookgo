all:

peoplebook:


schema:
	pg_dump -s peoplebook > db/schema.sql

migrate:
	migrate -source file://./db/migrations -database "postgres://127.0.0.1:5432/peoplebook?sslmode=disable" up

newmigration:
	migrate create -dir db/migrations -ext sql $(NAME)

createdb:
	psql -c 'CREATE DATABASE peoplebook;'

dropdb-confirm:
	@echo -n "Are you sure? [y/N] " && read ans && [ $${ans:-N} = y ]

dropdb: dropdb-confirm
	psql -c 'DROP DATABASE peoplebook;'


.SILENT: dropdb createdb

.PHONY: dropdb-confirm dropdb
