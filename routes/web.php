  <?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// - Auth
// Authentication Routes...
Route::get('ingresar', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('ingresar', 'Auth\LoginController@login');
Route::post('desloguear', 'Auth\LoginController@logout')->name('logout');

// Registration Routes...
Route::get('registro', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('registro', 'Auth\RegisterController@register');

// Password Reset Routes...
Route::get('password/resetear', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
Route::post('password/reset', 'Auth\ResetPasswordController@reset');


// NO MODIFICAR EL ORDER

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/faq', 'HomeController@faq')->name('faq');

Route::get('/productos','ProductsController@index');

Route::get('/productos/agregar', 'ProductsController@create')->middleware('checkname:admin');
Route::post('/productos/agregar', 'ProductsController@store')->middleware('checkname:admin');

Route::get('/productos/{id}', 'ProductsController@show');

Route::delete('/productos/{id}', 'ProductsController@destroy');

Route::get('/productos/{id}/edit', 'ProductsController@edit')->middleware('checkname:admin');
Route::patch('/productos/{id}', 'ProductsController@update');

Route::post('/cart/add', array('before'=>'auth.basic','uses'=>'CartController@postAddToCart'));
Route::get('/cart/borrar/{id}', array('before'=>'auth.basic','as'=>'delete_product_from_cart','uses'=>'CartController@getDelete'));
Route::get('/cart', array('before'=>'auth.basic','as'=>'cart','uses'=>'CartController@getIndex'));


Route::post('/order', array('before'=>'auth.basic','uses'=>'OrderController@postOrder'));
Route::get('/user/orders', array('before'=>'auth.basic','uses'=>'OrderController@getIndex'));
