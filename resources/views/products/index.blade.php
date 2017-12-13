@extends('layouts.app')

@section('content')
    <div class="container">
      <div class="span12">
        <div class="row">
          <ul class="thumbnails">
            @foreach ($products as $product)
            <li class="span4">
              <div class="thumbnail">
                <img src="{{ asset('storage/' . $product->fotopath) }}" alt="">
                <div class="caption">
                  <h3>{{$product->name}}</h3>
                  <p>Costo: <b>${{$product->cost}}</b></p>
                  <p>Final <b>${{$product->getPrice()}}</b></p>

                  <form action="/cart/add" name="add_to_cart" method="post" accept-charset="UTF-8">
                    <input type="hidden" name="product" value="{{$product->id}}" />
                  <p align="center"><button class="btn btn-info btn-block">Agregar</button></p>
                </form>
                </div>
              </div>
            </li>
            @endforeach
            {{ $products->links()}}
          </ul>
        </div>
      </div>
    </div>

@endsection
