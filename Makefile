include .env.db

up:
	docker-compose up -d

down:
	docker-compose down

psql:
	docker-compose exec db psql -U $(POSTGRES_USER) $(POSTGRES_DB)

dbdump:
	docker-compose exec -T db pg_dump -U $(POSTGRES_USER) $(POSTGRES_DB) > ./dumps/dump.sql