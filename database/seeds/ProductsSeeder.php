<?php

use Illuminate\Database\Seeder;
use App\Product;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      Product::create(array(
      'name'=>'Vestido Floreado',
      'cost'=>'400',
      'profit_margin'=>'15',
      'category_id'=>'1',
      'fotopath'=>'productos/vestidofloreado.jpg'
     ));
     Product::create(array(
       'name'=>'Vestido Verde',
       'cost'=>'350',
       'profit_margin'=>'15',
       'category_id'=>'1',
       'fotopath'=>'productos/vestidoverde.jpg'
    ));
     Product::create(array(
       'name'=>'Basica Blanca',
       'cost'=>'100',
       'profit_margin'=>'15',
       'category_id'=>'1',
       'fotopath'=>'productos/basica.jpg'
    ));
    Product::create(array(
    'name'=>'Sweater Beige',
    'cost'=>'320',
    'profit_margin'=>'15',
    'category_id'=>'2',
    'fotopath'=>'productos/sweaterbeige.jpg'
   ));
   Product::create(array(
     'name'=>'Camisa Blanca',
     'cost'=>'100',
     'profit_margin'=>'15',
     'category_id'=>'2',
     'fotopath'=>'productos/blanca.jpg'
  ));
   Product::create(array(
     'name'=>'Remera Rayas',
     'cost'=>'180',
     'profit_margin'=>'15',
     'category_id'=>'2',
     'fotopath'=>'productos/remera.jpg'
  ));

    }
}
