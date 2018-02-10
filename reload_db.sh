#!/bin/bash

docker cp sql/truncate_tables.sql docker_mariadb_1:/
docker cp sql/initdata.sql docker_mariadb_1:/
docker cp sql/create_wp_users.sql docker_mariadb_1:/
docker cp sql/create_wp_usermeta.sql docker_mariadb_1:/
docker cp sql/local_url_rewrite.sql docker_mariadb_1:/

docker exec docker_mariadb_1 /bin/sh -c 'mysql -u root -proot demo_db </truncate_tables.sql'
docker exec docker_mariadb_1 /bin/sh -c 'mysql -u root -proot demo_db </initdata.sql'
docker exec docker_mariadb_1 /bin/sh -c 'mysql -u root -proot demo_db </create_wp_users.sql'
docker exec docker_mariadb_1 /bin/sh -c 'mysql -u root -proot demo_db </create_wp_usermeta.sql'
docker exec docker_mariadb_1 /bin/sh -c 'mysql -u root -proot demo_db </local_url_rewrite.sql'
