#!/usr/bin/env sh

echo '== Single Query =='

for i in 1 2 3 4 5 6 7 8 9 10
do
  php once.php
done

echo '== Ten Queries =='

for i in 1 2 3 4 5 6 7 8 9 10
do
  php ten.php
done