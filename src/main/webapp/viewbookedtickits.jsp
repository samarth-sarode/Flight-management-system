<%@page import="Dao.FlightBookedTickits"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="Dao.Flightservice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br>
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
	
	

<br><br>

	<%
	
	List<FlightBookedTickits> list = Flightservice.viewbookedtickets();
	%>	
		<table style="border : 1px solid black; margin: auto; align-items: center; text-align: center; font-size: 1rem" >
			<tr style="border : 1px solid black; padding: 1rem;">
				<th>index</th>
				<th style="border : 1px solid black; padding: 1rem">Username</th>
				<th style="border : 1px solid black ; padding: 1rem">Id</th>
			</tr>
	<%
	
	for(FlightBookedTickits f : list){
	
	 %>
	<%! int i = 1 ; %>
			<tr style="border : 1px solid black; ">
				<td style="border : 1px solid black; padding: 1rem"><%= i %></td>	
				<td style="border : 1px solid black; padding: 1rem"><%= f.getUsername() %></td>
				<td style="border : 1px solid black; padding: 1rem"><%= f.getId() %></td>
			</tr>
	
	
	<%
		i++;
		if(i > list.size()){
			i = 1;
		}
			
		
		}
	%>		
			</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>