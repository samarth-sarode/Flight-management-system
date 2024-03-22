<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Dao.Flightservice"%>
<%@page import="Model.Flight"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align : center" class="mb-3">Edit Form</h1>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Flight f = Flightservice.getFlight(id);
		
	%>
	
	<div style="text-align : center" class="mb-3">Flight Id : <%= f.getId() %></div>
	<form action="editflight.jsp" method="post"  class="mt-3 container-fluid">
	<div class="row">
		  <div class="col offset-1 col-4">
		    <input id="id" type="hidden" class="form-control" placeholder="Enter Id" name="id" value="<%= f.getId() %>" >
		  </div>
		  <div class="col offset-1 col-4">
		    <input type="text" class="form-control" placeholder="Flight name" id="name" name="name" value="<%= f.getName() %>">
		  </div>
	</div>
	<br>
	<br>
	
	
	<div class="row">
		
		  <div class="col offset-1 col-4">
		    <input type="text" class="form-control" placeholder="Enter Source" id="source" name="source" value="<%= f.getSource() %>" >
		  </div>
		  <div class="col offset-1 col-4">
	
		    <input type="text" class="form-control" placeholder="Enter Destination" id="destination" name="destination" value="<%= f.getDestination() %>">
		  </div>
	</div>
	<br>
	<br>
	
	<div class="row">
		  <div class="col offset-1 col-4">
		 
		    <input type="date" class="form-control " placeholder="Enter Date" id="date" name="date" value="<%= f.getDate() %>">
		  </div>
		  <div class="col offset-1 col-4">
		 
		    <input type="number" class="form-control" placeholder="Enter Price" id="Price" name="price" value = "<%= f.getPrice() %>">
		  </div>
	</div>
	<br>
	<br>
	<button type="submit" class="btn btn-primary offset-1">Submit</button>
	</form>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	 integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>