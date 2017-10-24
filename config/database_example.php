<?php
/**
 * Config file for Database.
 *
 * Example for MySQL.
 *  "dsn" => "mysql:host=localhost;dbname=test;",
 *  "username" => "test",
 *  "password" => "test",
 *  "driver_options"  => [\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'UTF8'"],
 *
 * Example for SQLite.
 *  "dsn" => "sqlite:memory::",
 *
 */


return [
    'dsn'            => "mysql:host=localhost;dbname=comments;",
    'username'       => "user",
    'password'       => "pass",
    'driver_options' => [\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"],
    'table_prefix'   => null,
    'fetch_mode'     => \PDO::FETCH_OBJ,
    'session_key'    => 'Anax\Database',
    'verbose'        => true,
    'debug_connect'  => true,
];
