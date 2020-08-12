<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Categories;
use App\Models\ProductTypes;
use App\Models\Product;
use Cart;
use Auth;
class HomeController extends Controller
{
    // dung view share đổ dư r liwwuj ra menu
public function __construct(){
        $category = Categories::where('status',1)->get();
        $producttype =  ProductTypes::where('status',1)->get();
        view()->share(['category' => $category, 'producttype' => $producttype ]);
    }
    public function index(){
    	$product = Product::where('status',1)->where('promotional','>',0)->paginate(6); 
    	$product1= Product::where('status',1)->orderBy('created_at', 'desc')->paginate(9);
        $product2= Product::where('status',1)->paginate(9);    
        return view('client.pages.index',['nike' => $product,'hotproduct'=>$product1,'allproduct'=>$product2]);
    }
    public function productype($id){
       
        $productype = Product::where('status',1)->where('idProductType',$id)->get();
        $productype1 = Product::where('status',1)->where('idProductType','<>',$id)->paginate(9);
        $pro1 = ProductTypes::where('id',$id)->get();
       
        return view('client.pages.producttype',['types'=>$productype,'types1'=>$productype1,'proty'=>$pro1]);
    }
    public function category($id){
         $productcate = Product::where('status',1)->where('idCategory',$id)->paginate(12);
          $catego = Categories::where('id',$id)->paginate(12);  
        return view('client.pages.category',['cate'=> $productcate,'ca'=>$catego]);
    }
    public function getProduct($id){
        $Product = Product::where('id',$id)->first();

        $sptuongtu = Product::where('idProductType', $Product->idProductType)->where('id','<>',$id)->paginate(3);

        $top_Product = Product::where('status',1)->paginate(3);

        $new_Product = Product::where('status',"")->paginate(3);

        return view('client.pages.product',compact('Product','$sptuongtu','top_Product','new_Product'));
    }

}
