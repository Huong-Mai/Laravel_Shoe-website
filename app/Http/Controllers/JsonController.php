<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ProductTypes;
use App\Models\Categories;
use App\Models\Product;
use App\Http\Requests\StoreProductTypeRequest;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\StoreProductRequest;
class JsonController extends Controller
{
  public function getCategory(){

    //$category = Categories::all();
    $category = Categories::select('id', 'name')->get();
    return $category;
  }
  public function getProductType(){

    //$category = Categories::all();
    $producttype = ProductTypes::select('id', 'name')->get();
    return $producttype;
  }
  public function getProduct(){

    //$category = Categories::all();
    $product = Product::select('id', 'name', 'description','price', 'image', 'idProductType')->get();
    return $product;
  }
}
