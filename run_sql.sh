#!/bin/bash

docker cp sql/local_url_rewrite.sql docker_mariadb_1:/
docker exec docker_mariadb_1 /bin/sh -c 'mysql -u root -p root </local_url_rewrite.sql'
echo "done!"
