<%@page import="Dao.Flightservice"%>
<%@page import="Model.Flight"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="f" class="Model.Flight"></jsp:useBean>
	<jsp:setProperty property="*" name="f"/>

	<% 	int i = Flightservice.addflight(f);
	
		if(i > 0){
			System.out.println("Data Inserted");
			
		}
		else{
			System.out.println("Data Not Inserted");
			
		}
		
		response.sendRedirect("home.jsp");
	%>
</body>
</html>