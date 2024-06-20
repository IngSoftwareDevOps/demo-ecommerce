#!/usr/bin/env bash

APP_NAME=demo-ecommerce

docker exec -it ${APP_NAME} su sindria -c "/usr/local/bin/composer install"