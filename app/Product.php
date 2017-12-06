<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
  protected $fillable = ['ProductID', 'ProductName', 'ProductPrice', 'ProductShortDesc', 'ProductLongDesc', 'ProductImage', 'ProductCategoryID', 'ProductCategoryBrandID', 'ProductCategoryGenreID', 'ProductCategoryColorID'];

  public function category() {
    return $this->belongsTo('\App\Category', 'ProductCategoryID', 'ProductID');
  }

  public function getPrice() {
    $ganancia
      return $this->ProductPrice + ($this->ProductPrice $ganacia / 100);
  }


}
