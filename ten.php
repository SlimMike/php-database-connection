<?php

require_once 'shared.php';

$start = microtime(true);

$pdo = pdo(); // will initiate connection

$pdoInitialized = microtime(true);

for ($i = 1; $i <= 10; $i++) {
    once($pdo);
}

$queryTime = microtime(true);

notify('PDO init', $start, $pdoInitialized);
notify('Query time', $pdoInitialized, $queryTime);