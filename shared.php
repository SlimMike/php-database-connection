<?php

function notify(string $message, float $start, float $end) : void
{
    echo str_pad($message . ': ', 12) . substr(($end - $start) * 1000, 0, 5) . ' ms' . PHP_EOL;
}

function once(PDO $pdo) : void
{
    $stmt = $pdo->query('SELECT 1');
    $x    = $stmt->fetchAll();

    if ($x[0][1] !== 1) {
        throw new RuntimeException();
    }
}

function pdo() : PDO
{
    $host    = $_ENV['DB_HOST'];
    $user    = $_ENV['DB_USER'];
    $pass    = $_ENV['DB_PASS'];
    $charset = $_ENV['DB_CHARSET'];

    $dsn     = "mysql:host=$host;charset=$charset";
    $options = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
        PDO::ATTR_PERSISTENT         => false
    ];

    return new PDO($dsn, $user, $pass, $options);
}