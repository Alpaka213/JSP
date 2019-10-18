<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String idvar = request.getParameter("id");
	String pwvar = request.getParameter("pw");
	String check = request.getParameter("idsave");
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
		if (request.getParameter("idsave")==null){
			session.removeAttribute("memsave");
		}
		else
			session.setAttriube("memSave,check");
		session.setAttribute("loginid", "idvar");
		response.sendRedirect("loginReview.jsp");
	}
	else {
		response.sendRedirect("loginReview.jsp");
	}
		
	
	%>
	
</body>
</html>