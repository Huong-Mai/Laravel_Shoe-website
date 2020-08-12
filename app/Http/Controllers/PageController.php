<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Categories;
use App\Models\ProductTypes;
use App\Models\Product;
use Cart;
use Auth;
class PageController extends Controller
{
    //
    public function getProduct($id){
		$Product = Product::where('id',$id)->first();

		$sptuongtu = Product::where('idProductType', $Product->idProductType)->where('id','<>',$id)->paginate(3);

		$top_Product = Product::where('status',1)->paginate(3);

		$new_Product = Product::where('status',"")->paginate(3);

		return view('client.pages.product',compact('Product','$sptuongtu','top_Product','new_Product'));
	}
}
