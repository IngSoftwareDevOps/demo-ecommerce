# Demo - E-Commerce

This repo is for demo of e-commerce example.

## Setup Development Environment

- Create directory: `mkdir -p $HOME/Projects/ITS`
- Move into it: cd $HOME/Projects/ITS
- Clone this repo: `git clone git@github.com:IngSoftwareDevOps/demo-ecommerce.git`
- Move into it: cd $HOME/Projects/ITS/demo-ecommerce
- Setup env: `cp .env.local .env` (controllare i valori dei path)
- Setup docker compose: `cp docker-compose.local.yml docker-compose.yml`
- Start environment: `docker-compose up -d`
- Enter into container: `docker exec -it demo-ecommerce bash`
- De-escalate privileges: `su sindria`
- Install dependencies: `composer install` (after this exit)
- Install product: `bash bin/magento_setup.sh Mario Rossi mario.rossi@sindria.org mario.rossi admin123`

## Common errors

- Magento permissions: `bash bin/magento_fix_permissions.sh`
- Magento frontend: `bash bin/magento_flush_frontend.sh`

## Destroy local env

- Delete product files: `rm src/app/etc/config.php` AND `rm src/app/etc/env.php`
- Destroy containers and volumes: `docker compose down -v` OR `docker-compose down -v`

## Utility commands

- Watch all container logs: `docker compose logs -f`
- Watch specific container logs: `docker compose logs -f <service>`
- Enter into container: `docker exec -it demo-ecommerce bash`
- Login as sindria user: `su sindria`
- Watch magento logs: `tail -f var/log/debug.log`
- Clean magento cache: `php bin/magento cache:clean` 
- Reindex magento catalog: `php bin/magento indexer:reindex`

NB: *lanciare sempre i comandi magento e composer come utente sindria*
