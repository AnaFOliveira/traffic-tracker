initialise:
	docker-compose up -d
	make enter_db

enter_db:
	echo "entering db"
	docker exec -it traffic-tracker-db-1 "su postgres"
	sh init.sql

