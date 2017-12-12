<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    // Agregar nombre de la tabla productos
  protected $table = 'products';

  protected $fillable = ['name', 'cost', 'profit_margin', 'category_id', 'fotopath'];

  protected $guarded = [];

  public function category() {
    return $this->belongsTo('\App\Category', 'category_id', 'id');
  }

  public function getPrice() {
	   return $this->cost + ($this->cost * $this->profit_margin / 100);
  }



}
