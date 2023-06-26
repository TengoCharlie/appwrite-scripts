#!/bin/bash

# Stop Running docker container traffic

docker compose stop traefik

chmod +x backup.sh

./backup.sh

# Start Docker container traffic

docker compose start traefik
