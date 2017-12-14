<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Cart;
use View;
use Validator;
use Illuminate\Support\Facades\Input;

class CartController extends Controller
{
  public function postAddToCart()
{
  $rules = array(
   'amount'=>'required|numeric',
   'product'=>'required|numeric|exists:product,id'
 );

 $validator = Validator::make(Input::all(), $rules);
      
      if ($validator->fails())
      {
          return Redirect::route('index')->with('error','El articulo no se pudo agregar al carrito!');
      }

      $user_id = Auth::user()->id;
      $product_id = Input::get('product');
      $amount = Input::get('amount');

      $product = Product::find($product_id);
      $total = $amount*$product->price;

       $count = Cart::where('product_id','=',$product_id)->where('user_id','=',$user_id)->count();

       if($count){

         return Redirect::route('index')->with('error','El articulo ya se encutra en el carrito.');
       }

      Cart::create(
        array(
        'user_id'=>$user_id,
        'product_id'=>$product_id,
        'amount'=>$amount,
        'total'=>$total
        ));

      return Redirect::route('cart');
    }

    public function getIndex()
    {
     $user_id = Auth::user()->id;

     $cart_products = Cart::with('Product')->where('user_id','=',$user_id)->get();

     $cart_total = Cart::with('Product')->where('user_id','=',$user_id)->sum('total');

     if(!$cart_products)
     {
       return Redirect::route('index')->with('error','Tu carrito esta vacio.');
     }

     return View::make('cart')
      ->with('cart_products', $cart_products)
      ->with('cart_total',$cart_total);
 }

    public function getDelete($id)
    {
       $cart = Cart::find($id)->delete();

       return Redirect::route('cart');
    }

}
