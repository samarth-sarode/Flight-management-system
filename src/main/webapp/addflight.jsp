<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<h2 style="text-align:center">Add Flight</h2>
	<form action="add.jsp" method="post"  class="mt-3 container-fluid">
	<div class="row">
		  <div class="col offset-1 col-4">
		    <input id="id" type="number" class="form-control" placeholder="Enter Id" name="id">
		  </div>
		  <div class="col offset-1 col-4">
		    <input type="text" class="form-control" placeholder="Flight name" id="name" name="name">
		  </div>
	</div>
	<br>
	<br>
	
	
	<div class="row">
		  <div class="col offset-1 col-4">
		    <input type="text" class="form-control" placeholder="Enter Source" id="source" name="source">
		  </div>
		  <div class="col offset-1 col-4">
	
		    <input type="text" class="form-control" placeholder="Enter Destination" id="destination" name="destination">
		  </div>
	</div>
	<br>
	<br>
	
	<div class="row">
		  <div class="col offset-1 col-4">
		 
		    <input type="date" class="form-control" placeholder="Enter Date" id="date" name="date">
		  </div>
		  <div class="col offset-1 col-4">
		 
		    <input type="number" class="form-control" placeholder="Enter Price" id="Price" name="price">
		  </div>
	</div>
	<br>
	<br>
	<button class="btn btn-primary offset-1" type="submit">Submit</button>
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	 integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>