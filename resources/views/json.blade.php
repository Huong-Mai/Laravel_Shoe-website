<!doctype html>
<html lang="en">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Laravel Store Data To Json Format In Database - Tutsmake.com</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
  <style>
   .error{ color:red; } 
  </style>
</head>
 
<body>
 
<div class="container">
    <h2 style="margin-top: 10px;">Laravel Store Data To Json Format In Database - Tutsmake.com</h2>
    <br>
    <br>
 
    @if ($message = Session::get('success'))
    <div class="alert alert-success alert-block">
        <button type="button" class="close" data-dismiss="alert">×</button>
          <strong>{{ $message }}</strong>
    </div>
    <br>
    @endif
   
    <form id="laravel_json" method="post" action="{{url('store-json')}}">
      @csrf
      <div class="form-group">
        <label for="formGroupExampleInput">Name</label>
        <input type="text" name="name" class="form-control" id="formGroupExampleInput" placeholder="Please enter name">
      </div>
      <div class="form-group">
        <label for="id">Email Id</label>
        <input type="text" name="id" class="form-control" id="id" placeholder="Please enter email id">
      </div>      
      <div class="form-group">
        <label for="status">Mobile Number</label>
        <input type="text" name="status" class="form-control" id="status" placeholder="Please enter mobile number">
      </div>
      <div class="form-group">
       <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </form>
 
</div>
 
</body>
</html>