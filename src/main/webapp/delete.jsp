<%@page import="Dao.Flightservice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<%
		int flight_id = Integer.parseInt(request.getParameter("id")) ;
		Flightservice.delete_flight(flight_id);
		response.sendRedirect("view.jsp");
	%>
</body>
</html>