@extends('layouts.app')

@section('content')

<div class="container cartContainer" style="width:60%">
  <h1>Carrito</h1>
  <table class="table">
    <tbody>
      <tr>
        <td>
          <b>Articulo</b>
        </td>
        <td>
          <b>Cantidad</b>
        </td>
        <td>
          <b>Precio</b>
        </td>
        <td>
          <b>Total</b>
        </td>
        <td>
          <b>Eliminar</b>
        </td>
      </tr>
      @foreach($cart_products as $cart_item)
        <tr>
          <td>{{$cart_item->Product->name}}</td>
          <td>
           {{$cart_item->amount}}
          </td>
          <td>
            {{$cart_item->Product->price}}
          </td>
          <td>
           {{$cart_item->total}}
          </td>
          <td>
            <a href="{{URL::route('delete_product_from_cart',array($cart_item->id))}}">Delete</a>
          </td>
        </tr>
      @endforeach
      <tr>
        <td>
        </td>
        <td>
        </td>
        <td>
          <b>Total</b>
        </td>
        <td>
          <b>{{$cart_total}}</b>
        </td>
        <td>
        </td>
      </tr>
    </tbody>
  </table>
  <h2>Entrega</h2>
  <form action="/order" method="post" accept-charset="UTF-8">
    <label>Direccion</label>
    <textarea class="span4" name="address" rows="5"></textarea>
    <button class="btn btn-block btn-primary btn-large">Place order</button>
  </form>
</div>
@stop
