<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
  protected $fillable = ['user_id','product_id','amount','total'];

  public function products(){

  return $this->belongsTo('Product','products_id');

}



}
