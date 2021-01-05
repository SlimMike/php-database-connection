build:
	docker build --tag php-database-connection:latest .

run:
	docker run --rm --env-file .env php-database-connection:latest

ssh:
	docker run --rm --env-file .env -it php-database-connection:latest /bin/ash