<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="Dao.Flightservice"%>
<%@page import="Model.Flight"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style type="text/css">

	th , td{
		border: 1px solid black ;
		padding: 2rem;
		text-align: center;
	}
	
	.card-style{
		display: flex;
		flex-wrap: wrap;
	/*	align-content: space-around;
		*/
	}
	
	.card{
		margin: 2rem;
		background-color: rgb(246, 247, 240);
	}
	
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view.jsp">View</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link" href="addflight.jsp">Add Flight</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="viewbookedtickits.jsp">View Booked Tickits</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

	<% 
		List <Flight> arr = Flightservice.viewFlight();
		request.setAttribute("arr" , arr);
	
	%>




<!--	<div class="container">
  	<table style="border: 1px solid black">
			<tr style="border: 1px solid black">
				<th>Flight Id</th> &nbsp;
				<th>Flight Name</th> &nbsp;
				<th>Flight Source</th> &nbsp;
				<th>Flight Destination</th> &nbsp;
				<th>Flight Date</th> &nbsp;
				<th>Flight Price</th> &nbsp;
				<th>Edit</th> &nbsp; &nbsp;
				<th>Delete</th> &nbsp; &nbsp;
			</tr>
-->				
		<div class="row row-cols-lg-3 row-cols-md-2 row-cols-sm-1 card-style">
			
			
		
			<%
				for(Flight f : arr){
						
			%>
<!-- 		<tr style="border: 1px solid black">
				<td ><%= f.getId() %></td>
				<td><%= f.getName() %></td>
				<td><%= f.getSource()  %> </td>
				<td><%= f.getDestination() %> </td>
				<td><%= f.getDate() %> </td>
				<td><%= f.getPrice() %></td>
				<td> <a href="editform.jsp?id=<%= f.getId() %>"><button class="btn btn-primary">Edit</button></a> </td>
				<td><a href="delete.jsp?id=<%= f.getId() %>"><button class="btn btn-primary">Delete</button></a></td>
			</tr>
			<br>
 -->				
 			<div class="card col" style="width: 18rem;">
			  <div class="card-body">
			  	<h5> Id : <%= f.getId() %></h5>
			    <h5> Name :  <%= f.getName() %> </h5>
			    <h5> Source :  <%= f.getSource()  %></h5>
			    <h5>  Destination : <%= f.getDestination() %> </h5>
			    <h5> Date : <%= f.getDate() %></h5>
			    <h5> Price :  <%= f.getPrice() %></h5>
			    <a href="editform.jsp?id=<%= f.getId() %>"><button class="btn btn-primary col-4 ">Edit</button></a>
			    <a href="delete.jsp?id=<%= f.getId() %>"><button class="btn btn-primary col-4 offset-1">Delete</button></a>
			    <br><br>
			    <a href="bookflight.jsp?id=<%= f.getId() %>"><button class="btn btn-primary">Book Flight</button></a>
			  </div>
			</div>
			<%
				}
			%>
			
		</div>
<!-- 	</table>	
	
	</div>
 -->	
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
</body>
</html>