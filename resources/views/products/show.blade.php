<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>{{$product->name}}</title>
    <link rel="stylesheet" href="/css/app.css">
  </head>
  <body>
    <h1>{{$product->name}}</h1>
    <h4>Categoria: {{$category->name}}</h4>
    <p>Costo: ${{$product->cost}}</p>
    <p>Final ${{$product->getPrice()}}</p>

    <form action="/productos/{{$product->id}}" method="post">
      {{ csrf_field() }}
      {{ method_field('delete') }}
      <button type="submit">Borrar</button>
    </form>
  </body>
</html>
