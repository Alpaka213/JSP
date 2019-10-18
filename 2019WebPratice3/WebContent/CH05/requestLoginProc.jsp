<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String idvar = request.getParameter("id");
	String pwvar = request.getParameter("pw");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% if(idvar.equals("dong") && pwvar.equals("1234"))
	{
		session.setAttribute("loginCheck", "ok");
		session.setAttribute("loginid", "idvar");
		response.sendRedirect("requestLogin.jsp");
	}
	else {
		response.sendRedirect("requestLogin.jsp");
	}
		
	
	%>
	
</body>
</html>