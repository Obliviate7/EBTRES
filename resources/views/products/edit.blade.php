<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="/css/app.css">
  </head>
  <body>
    <div class="container">
      <h1>Editando {{$product->name}}</h1>
      <form class="col-md-5" action="/productos/{{$product->id}}" method="post">
        {{ csrf_field() }}
        {{ method_field('patch') }}
        <div class="form-group">
          <label for="name">Nombre:</label>
          <input type="text" name="name" value="{{$product->name}}" class="form-control">
          @if ($errors->has('name'))
			       <div class="alert alert-danger">
               <ul>
                 @foreach ($errors->get('name') as $error)
                 <li>{{ $error }}</li>
					       @endforeach
				       </ul>
			      </div>
		      @endif
        </div>
        <div class="form-group">
          <label for="name">Costo:</label>
          <input type="text" name="cost" value="{{$product->cost}}" class="form-control">
          @if ($errors->has('cost'))
             <div class="alert alert-danger">
               <ul>
                 @foreach ($errors->get('cost') as $error)
                 <li>{{ $error }}</li>
                 @endforeach
               </ul>
            </div>
          @endif
        </div>
        <div class="form-group">
          <label for="name">Margen de Ganancia:</label>
          <input type="text" name="profit_margin" value="{{$product->profit_margin}}" class="form-control">
          @if ($errors->has('profit_margin'))
             <div class="alert alert-danger">
               <ul>
                 @foreach ($errors->get('profit_margin') as $error)
                 <li>{{ $error }}</li>
                 @endforeach
               </ul>
            </div>
          @endif
        </div>
        <div class="form-group">
          <label for="name">Categoria:</label>
          <select name="category_id">
            @foreach ($categories as $category)
              @if ($category->id == $product->id)
                <option value="{{$category->id}}" selected>{{$category->name}}</option>
              @else
                <option value="{{$category->id}}">{{$category->name}}</option>
              @endif
            @endforeach
          </select>
        </div>
        <div class="form-group">
				<button type="submit" name="button" class="btn btn-primary">Subir</button>
			   </div>
      </form>
    </div>
  </body>
</html>
