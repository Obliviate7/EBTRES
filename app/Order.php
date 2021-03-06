<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
  protected $fillable = ['user_id','address','total'];

  public function orderItems()
  {
      return $this->belongsToMany('Product') ->withPivot('amount','total');
  }

}
