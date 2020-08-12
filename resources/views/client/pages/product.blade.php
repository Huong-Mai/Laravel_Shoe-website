@extends('client.layouts.master1')
@section('title')
	Sản phẩm
@endsection
@section('content')
<link rel="stylesheet" type="text/css" href="assets/client/CSS/style.css">
  <link rel="stylesheet" type="text/css" href="assets/admin/css/toastr.css">
<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Sản phẩm {{$Product->name}}</h6>
			</div>
			<!-- <div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Sản phẩm</span>/<span>{{$Product->name}}</span>
				</div>
			</div> -->
			<div class="clearfix"></div>
		</div>
	</div>
<br>
	<div class="container">
		<div id="content">
			<div class="row">
				<div class="col-sm-8">

					<div class="row">
						<div class="col-sm-6">
							<img src="img/upload/product/{{ $Product->image }}" alt="#">
                        </div>
						<div class="col-sm-6">
							<div class="single-item-body">
								<p class="single-item-title" name="name" value="{{$Product->name}}"><h3>{{$Product->name}}</h3></p>
								<p class="single-item-price">
									@if($Product->promotional==0)
										<span class="flash-sale" style="font-size: 18px">{{number_format($Product->price)}} đồng</span>
											@else
											    <span class="flash-del" style="font-size: 18px">{{number_format($Product->price)}} đồng</span>
                                <span class="flash-sale" style="font-size: 18px" name="price" value = "{{$Product->promotional}}">{{number_format($Product->promotional)}} đồng</span>
									        @endif
								</p>
							</div>
							<form action="#" method="get">
                            {{ csrf_field() }}
							<div class="clearfix"></div>
							<div class="space20">&nbsp;</div>

							<div class="single-item-desc">
								<p></p>
							</div>
							<div class="space20">&nbsp;</div>

							<p>Options:</p>
							<div class="single-item-options">
								<select class="wc-select" name="size">
									<option>Size</option>
									<option value="38">38</option>
									<option value="39">39</option>
									<option value="40">40</option>
									<option value="41">41</option>
									<option value="42">42</option>
								</select>
								<select class="wc-select" name="qty">
									<option>Số lượng</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select>
								<a href="{{route('addCart',['id'=>$Product->id]) }}" class="btn btn-info" role="button">Thêm giỏ hàng</a>
							</div>
                        
                    </form>
						</div>

                    
					</div>

					<div class="space40">&nbsp;</div>
					<div class="woocommerce-tabs">
						<ul class="tabs">
							<li><a href="#tab-description">Mô tả</a></li>
						</ul>

						<div class="panel" id="tab-description">
							<p>{{$Product->description}}</p>
						</div>
					</div>
					<div class="space50">&nbsp;</div>
					<!-- <div class="beta-products-list">
							<h4>Sản phẩm khác</h4>
							<div class="beta-products-details">

								<div class="clearfix"></div>
							</div>
							<div class="space40">&nbsp;</div>

						</div>  --><!-- .beta-products-list -->
				</div>
				<div class="col-sm-4 aside">
					<div class="widget">
						<h4 class="widget-title">Sản phẩm bán chạy</h4>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
								@foreach($top_Product as $top)
								<div class="media beta-sales-item">
									<a href="{{route('san-pham',$top->id)}}"><img src="img/upload/product/{{$top->image}}" alt=""></a>
									<div class="media-body">
										{{$top->name}}
										<p class="single-item-price" style="font-size: 15px">
												@if($top->promotional==0)
													<span class="flash-sale">{{number_format($top->price)}} đồng</span>
												@else
													<span class="flash-del">{{number_format(														$top->price)}}đồng</span>
													<span class="flash-sale">{{number_format($top->promotional)}} đồng</span>
												@endif
										</p>
									</div>
								</div>
								@endforeach
							</div>
						</div>
					</div> <!-- best sellers widget -->
					<div class="widget">
						<!-- <h3 class="widget-title">Sản phẩm mới</h3>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
								@foreach($new_Product as $new)
								<div class="media beta-sales-item">
									<a class="pull-left" href="{{route('san-pham',$new->id)}}"><img src="img/upload/product/{{$new->image}}" alt=""></a>
									<div class="media-body">
										{{$new->name}}
										<p class="single-item-price" style="font-size: 15px">
												@if($new->promotional==0)
													<span class="flash-sale">{{number_format($new->price)}} đồng</span>
												@else
													<span class="flash-del">{{number_format(														$new->price)}}đồng</span>
													<span class="flash-sale">{{number_format($new->promotional)}} đồng</span>
												@endif
										</p>
									</div>
								</div>
								@endforeach
							</div> -->
						</div>
					</div> <!-- best sellers widget -->
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection