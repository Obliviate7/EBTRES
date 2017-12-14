<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      Eloquent::unguard();
      $this->call('CategoriesSeeder');
      $this->command->info('Categories table seeded!');
      $this->call('UserTableSeeder');
      $this->command->info('Users table seeded!');
      $this->call('ProductsSeeder');
      $this->command->info('Products table seeded!');

    }
}
