<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductsController extends Controller
{
  public function index()
  {
  	$products = \App\Product::all();

  	$variables = [
  		"products" => $products,
  	];

  	return view('products.index', $variables);
  }

  public function show($id)
  {
    $product = \App\Product::find($id);

    $variables = [
      "product" => $product,
      "category" => $product->category,
    ];

    return view('products.show', $variables);
  }

  public function create()
  {
    $categories = \App\Category::all();
    $variables = [
      "categories" => $categories,
    ];

    return view('products.create', $variables);
  }

  public function store(Request $request)
  {
    $rules = [
      "name" => "required|unique:products",
      "cost" => "required|numeric",
      "profit_margin" => "required|numeric",
      "category_id" => "required|numeric|between:1,10"
    ];
    $messages = [
      "required" => "El :attribute es requerido!",
      "unique" => "El :attribute tiene que ser único!",
      "numeric" => "El :attribute tiene que ser numérico!",
      "between" => "El :attribute tiene que estar entre :min y :max!"
    ];
    $request->validate($rules, $messages);

    $extensionImagen = $request->file('fotoPath')->getClientOriginalExtension();

    $fotoPath = $request->file('fotoPath')->storeAs('productos', uniqid() . "." . $extensionImagen, 'public');

    $producto = \App\Product::create([
      'name' => $request ->input('name'),
      'cost' => $request ->input('cost'),
      'profit_margin' => $request ->input('profit_margin'),
      'fotopath' => $fotoPath
    ]);

    $category = \App\Category::find($request->input('category_id'));

    $producto->category()->associate($category);
    $producto->save();

    return redirect('/productos');
  }

  public function destroy($id)
  {
    $product = \App\Product::find($id);

    $product->delete();

    return redirect('/productos');
  }

  public function edit($id)
  {
    $product = \App\Product::find($id);
    $categories = \App\Category::all();

    $variables = [
      'product' => $product,
      'categories'=> $categories,
    ];
    return view('products.edit', $variables);
  }

  public function update(Request $request, $id)
  {
    $product = \App\Product::find($id);
    $category = \App\Category::find($request->input('category_id'));

    $product->name = $request->input('name');
    $product->cost = $request->input('cost');
    $product->profit_margin = $request->input('profit_margin');
    $product->category()->associate($category);
    $product->save();

    return redirect('/productos/' . $id);
  }



}
