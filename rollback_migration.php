<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;

require 'vendor/autoload.php';

// Boot Laravel application
$app = require_once 'bootstrap/app.php';
$app->make(Illuminate\Contracts\Console\Kernel::class)->bootstrap();

// Include the migration file
require_once database_path('migrations/2024_04_12_133124_create_peserta_table.php');

// Instantiate the specific migration class
$migrationClass = new CreatePesertasTabel;

// Call the down method to rollback the migration
$migrationClass->down();

// Remove the migration entry from the migrations table
DB::table('migrations')->where('migration', '2024_04_12_133124_create_peserta_table')->delete();

echo "Migration rolled back successfully.";
