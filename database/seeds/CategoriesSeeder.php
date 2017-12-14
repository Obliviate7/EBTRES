<?php

use Illuminate\Database\Seeder;
use App\Category;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
     public function run()
     {
        Category::create(array(
            'name' => 'Mujeres',
        ));

        Category::create(array(
            'name' => 'Hombre',
        ));
    }
}
