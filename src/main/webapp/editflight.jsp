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
	
	<jsp:useBean id="f" class="Model.Flight"></jsp:useBean>
	<jsp:setProperty property="*" name="f"/>
	<%
		int i = Flightservice.update_flight(f);
	
		response.sendRedirect("view.jsp");
	%>
</body>
</html>