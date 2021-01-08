#!/usr/bin/env sh

echo '== Wait a bit just in case'

sleep 5

echo '== Single Query =='

for i in 1 2 3 4 5
do
  php once.php
done

sleep 6 # public endpoint DNS is cached for 5 or 6 seconds AFAIK

for i in 1 2 3 4 5
do
  php once.php
done

echo '== Ten Queries =='

for i in 1 2 3 4 5 6 7 8 9 10
do
  php ten.php
done