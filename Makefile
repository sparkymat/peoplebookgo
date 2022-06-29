all:

peoplebook:


schema:
	pg_dump -s peoplebook > db/schema.sql

migrate:
	migrate -source file://./db/migrations -database "postgres://127.0.0.1:5432/peoplebook?sslmode=disable" up
