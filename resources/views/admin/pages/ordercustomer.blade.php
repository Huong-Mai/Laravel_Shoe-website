@extends('admin.layout.master')

@section('title')
    Danh sách loại sản phẩm
@endsection
@section('css')
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;

}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}


@endsection
@section('content')
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Danh Sách Đơn Hàng </h6>
        </div>
                <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="font-size: 13px;color: black;">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Code_Order</th>
                            <th>Tên </th>
                            <th>Tổng Tiền</th>
                            <th>Địa Chỉ</th>
                            <th>SĐT</th>
                            
                             <th>Tin Nhắn</th>
                            <th>Trạng Thái</th>
                            <th>Chi Tiết</th>
                            <th>Chỉnh Sửa</th>
                            
                        </tr>
                    </thead>
<!--                     <tfoot>
                        <tr>
                            <th>STT</th>
                            <th>Mã Đặt Hàng</th>
                            <th>Tên Khách Hàng</th>
                            <th>Địa Chỉ</th>
                            <th>Số Điện Thoại</th>
                            <th>Tổng Tiền</th>
                            <th>Tin Nhắn</th>
                            <th>Trạng Thái</th>
                            <th>Chỉnh Sửa</th>
                            <th>Chi Tiết Đơn Hàng</th>
                        </tr>
                    </tfoot> -->
                    <tbody>
<?php $i = 1 ?>
 @foreach($order1 as $or)
 <tr>
     <td>
         {{$i}}
     </td>
     <td>
         {{$or->code_order}}
     </td>
     <td>
         {{$or->name}}
     </td>
     <td>
        {{number_format( $or->monney)}} VNĐ
     </td>
    <td>
         {{$or->address}}
     </td>
    <td>
         {{$or->phone}}
     </td>
     
    <td>
         {{$or->message}}
     </td>
    <td>
<select>
   
  <option value="{{($or->status==0)}}">Chờ xử lí</option>
  <option value="{{$or->status==1}}">Đã xử lí</option>
  <option value="{{$or->status==2}}">Đã nhận hàng</option>

</select>
<!--         @if( $or->status ==1)
        <a href="" class="btn btn-success">Đã xữ lý</a>
         @elseif($or->status ==2)
        <a href="" class="btn btn-primary">Đã nhận hàng</a>
        @else
         <a href="" class="btn btn-danger">Chờ xữ lý</a>
        @endif -->
     </td>
       <td>
        <a href="admin/vieworder/{{$or->id}}" class=" fas fa-eye" title="Chi tiết đơn hàng" style="margin-left: 9px; margin-top: 14px"></a>
     </td>
        <td>
         <button class="btn btn-danger delete" title="Xóa đơn hàng của {{ $or->name }}"><i class="fas fa-trash-alt" > </i></button>
     </td>

 </tr>
<?php $i++; ?>
@endforeach
 </tbody>
 </table>
<div class="pull-right">{{ $order1->links() }}</div>
         </div>
     </div>
 </div>
 <!-- modal -->
 <div class="modal" id="myModalOrder">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header modal-lg">
          <h4 class="modal-title" style="color: red; text-align: center;"> <b> Chi Tiết Mã Đơn Hàng </b> <b class="id"></b></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          Modal body..
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
@endsection
