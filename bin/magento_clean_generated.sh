#!/usr/bin/env bash

APP_NAME=demo-ecommerce

docker exec -it ${APP_NAME} bash -c "rm -Rf /var/www/app/generated/code"