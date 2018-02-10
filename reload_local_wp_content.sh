#!/bin/bash

volumePath=$(docker volume inspect --format '{{ .Mountpoint }}' docker_demo_site)
sudo cp -r docker/wp-content "$volumePath/wp-content"
