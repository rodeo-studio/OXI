<?php

global $project;
$project = 'mysite';

global $databaseConfig;
/*
$databaseConfig = array(
  "type" => 'MySQLDatabase',
  "server" => 'external-db.s124560.gridserver.com',
  "username" => 'db124560_user',
  "password" => '1L1k3FunTh1ng5!',
  "database" => 'db124560_oxigen_staging',
  "path" => '',
);
*/

$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'root',
	'password' => 'root',
	'database' => 'ss_oxi',
	'path' => '',
);

// Set the site locale
i18n::set_locale('en_US');
