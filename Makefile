include env

build:
	docker-compose build

up:
	docker-compose --env-file env up -d

down:
	docker-compose down

mysql_set_local_infile:
	docker exec -it h_mysql mysql -u"root" -p"${MYSQL_ROOT_PASSWORD}" -e"set global local_infile=true;"

mysql_conn:
	docker exec -it h_mysql mysql --local_infile=1 -u"root" -p"${MYSQL_ROOT_PASSWORD}" ${MYSQL_DATABASE}

mysql_create:
	docker exec -it h_mysql mysql --local_infile=1 -u"root" -p"${MYSQL_ROOT_PASSWORD}" ${MYSQL_DATABASE} -e"source /tmp/load_data/mysql_create.sql"

mysql_load:
	docker exec -it h_mysql mysql --local_infile=1 -u"root" -p"${MYSQL_ROOT_PASSWORD}" ${MYSQL_DATABASE} -e"source /tmp/load_data/mysql_load.sql"

mysql_add_constraint:
	docker exec -it h_mysql mysql --local_infile=1 -u"root" -p"${MYSQL_ROOT_PASSWORD}" ${MYSQL_DATABASE} -e"source /tmp/load_data/mysql_add_constraint.sql"