<?php

use Illuminate\Database\Seeder;
use App\User;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

      User::create(array(
               'email' => 'catalina-delgado@gmail.com',
               'password' => Hash::make('temp123456'),
               'name' => 'Catalina',
               'lastName' => 'Delgado',
               'admin'=>0
           ));

      User::create(array(
               'email' => 'admin@store.com',
               'password' => Hash::make('admin123'),
               'name' => 'Admin',
               'lastName' => 'Admin ',
               'admin'=>1
           ));
    }
}
