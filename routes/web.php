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



// Route::get('/1h23', function () {
//     return view('admin.layout.master');
// });
// route admin

Route::post('admin/login','UserController@loginAdmin')->name('admin.login');
Route::view('admin/login','admin.pages.login')->name('login.admin');
Route::get('getproducttype','AjaxController@getProductType');
Route::group(['prefix'=>'admin','middleware'=>'adminMiddleware'],function(){
	Route::view('/', 'admin.pages.index');
    Route::resource('category', 'CategoryController');
    Route::resource('producttype', 'ProductTypeController');
    Route::resource('product', 'ProductController');
    Route::post('updatePro/{id}', 'ProductController@update');
    Route::resource('order','OrderController');
    Route::resource('order','OrderController');
    Route::get('vieworder/{id}', 'OrderController@viewOrder');
    
});
// Route Client
Route::get('callback/{social}','UserController@handleProviderCallback');
Route::get('login/{social}','UserController@redirectProvider')->name('login.social');
Route::get('logout','UserController@logout');
Route::post('updatepass','UserController@updatepass')->name('updatepassword');
Route::post('login','UserController@login')->name('login');
Route::post('register','UserController@register')->name('register');
// Route::get('/','HomeController@index');
Route::get('home',['as'=>'trang-chu','uses'=>'HomeController@index']);
Route::get('protype/{id}','HomeController@productype');
Route::get('cate/{id}','HomeController@category');
Route::resource('cart','CartController');
Route::get('addcart/{id}','CartController@addCart')->name('addCart');
Route::get('checkout','CartController@checkout');
Route::resource('customer','CustomerController');
Route::get('san-pham/{id}',
	['as'=>'san-pham', 'uses'=>'HomeController@getProduct']);


 Route::get('/store-json', 'CategoryController@getCategory');
 Route::get('/category-json', 'JsonController@getCategory');
 Route::get('/producttype-json', 'JsonController@getProductType');
 Route::get('/product-json', 'JsonController@getProduct');

