
<div class=" row5">
<!-- 	<div class="container"> -->
	<div class="row ">
		<div class="col-md-2 row6">
		   <a href="#" style=" text-align:left;  color: #000">Chính sách bảo hành</a><br>

          <a href="#" style=" text-align:left; color: #000"> Chính sách đổi trả</a><br>

          


		</div>
		<div class="col-md-2 row6">

          <a href="#" style=" text-align:left; color: #000"> Siêu thị gần nhất </a><br>
		  <a href="#" style=" text-align:left; color: #000"> Chính sách giao hàng</a><br>
		</div>
		<div class="col-md-3 row6">
		   <a href="#">
		<!--    	<img src="assets/client/hinhanh/dtlogo.PNG" width="80%" height="60%"> -->
		   	<img src="img\upload\product\logo_hcn.PNG" width="100%" height="130px">
		   </a>
		</div>
	<div class="col-md-1"></div>
		<div class="col-md-3 row6">
			<h6 style=" text-align:left;  color: #000">Chăm sóc khách hàng(24/7)</h6>
			<a href="#" style=" text-align:left;  color: #000"><b>03 322 755 831</b></a>
			<h6 style=" text-align:left;  color: #000">Khiếu nại hoặc bảo hành(24/7)</h6>
			<a href="#" style=" text-align:left;  color: #000"><b>1800 1508</b></a>
		</div>
	</div>
	<hr>
	<b style="text-align:center; color: #000">KHOA CNTT-TRUYỀN THÔNG ĐẠI HỌC ĐÀ NẴNG<br>
    
	Địa chỉ:Đường Nam Kì Khởi Nghĩa-Quận Ngủ Hành Sơn-TP Đà Nẵng</b>
<!-- 	</div> -->
</div>	
<script type="text/javascript" src="assets/client/JS/custom.js"></script>
<script type="text/javascript" src="assets/admin/js/toastr.min.js"></script>
<script type="text/javascript" src="assets/client/JS/ajax.js"></script>
@if(session('thongbao'))
	<script type="text/javascript">
		messageSuccess('{{ session('thongbao') }}');
	</script>
@endif

@if(session('error'))
	<script type="text/javascript">
		messageError('{{ session('error') }}');
	</script>
@endif