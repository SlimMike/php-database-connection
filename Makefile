build:
	docker build --tag slimmike/php-database-connection:webserver-latest .

run:
	docker run --rm --env-file .env slimmike/php-database-connection:webserver-latest

ssh:
	docker run --rm --env-file .env -it slimmike/php-database-connection:webserver-latest /bin/ash