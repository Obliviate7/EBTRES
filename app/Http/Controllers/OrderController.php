<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use App\Cart;
use App\Order;
use View;


class OrderController extends Controller
{
  public function postOrder()
  {
    $rules=array(

    'address'=>'required'

    );

    $validator = Validator::make(Input::all(), $rules);

    if ($validator->fails())
    {
      return Redirect::route('cart')->with('error','Agregar direecion de envio!');
    }

    $user_id = Auth::user()->id;
    $address = Input::get('address');

    $cart_products = Cart::with('Product')->where('user_id','=',$user_id)->get();

    $cart_total=Cart::with('Product')->where('user_id','=',$user_id)->sum('total');

    if(!$cart_products)
    {
       return Redirect::route('index')->with('error','Tu carrito esta vacio.');
    }

    $order = Order::create(
        array(
        'user_id'=>$user_id,
        'address'=>$address,
        'total'=>$cart_total
    ));

    foreach ($cart_products as $order_products)
    {
        $order->orderItems()->attach($order_products->product_id, array(
          'amount'=>$order_products->amount,
          'price'=>$order_products->Product->price,
          'total'=>$order_products->Product->price*$order_products->amount
        ));
    }

    Cart::where('user_id','=',$user_id)->delete();

    return Redirect::route('index')->with('message','Tu porden de compra se proceso correctamente.');
  }

  public function getIndex()
  {
    $user_id = Auth::user()->id;

    if(Auth::user()->admin)
    {
      $orders=Order::all();
    } else {
      $orders=Order::with('orderItems')->where('user_id','=',$user_id)->get();
    }

    if(!$orders)
    {
      return Redirect::route('index')->with('error','No hay orden de compra.');
    }

    return View::make('order')
          ->with('orders', $orders);
  }
}
