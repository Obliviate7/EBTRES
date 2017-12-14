@extends('layouts.app')

@section('content')

    <div class="container-fluid prodItems">
    @foreach ($products as $product)
       <div data-price="290" class="prodItem">
           <img src="{{ asset('storage/' . $product->fotopath) }}" alt="" class="img-item"></img>
           <div class="info">
                 <h3 class="descProduct">{{$product->name}}</h3>
                 <h5 class="priceProduct">${{$product->getPrice()}}</h5>
                 <form action="/cart/add" name="add_to_cart" method="post" accept-charset="UTF-8">
                   {{ csrf_field() }}
                 <input type="hidden" name="product" value="{{$product->id}}" />
                 <select name="amount" style="width: 100%;">
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                 <option value="5">5</option>
               </select>
               <p align="center"><button class="btn btn-primary btn-block submitLog">Agregar</button></p>
             </form>
           </div>
       </div>
     @endforeach
    </div>
    <div class="container">
     {{ $products->links()}}
    </div>
@endsection
