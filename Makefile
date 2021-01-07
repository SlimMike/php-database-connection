build:
	docker build --tag slimmike/php-database-connection:latest .

run:
	docker run --rm --env-file .env slimmike/php-database-connection:latest

ssh:
	docker run --rm --env-file .env -it slimmike/php-database-connection:latest /bin/ash