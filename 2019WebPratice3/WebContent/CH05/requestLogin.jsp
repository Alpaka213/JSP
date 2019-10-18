<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>

<body>

<h1>로그인</h1>
<%
	String check =(String)session.getAttribute("loginCheck");
	String id=(String)session.getAttribute("loginid");
	if (check == null){
		/*빈폼 */
%>		
	<form method="post" action="requestLoginProc.jsp">

	아이디: <input type="text" name="id"><p>
	비밀번호:<input type="password" name="pw"><p>
	
	<input type="submit" value="확인">
	</form>
<%		
	} else {

%>
	<%=id %>님,환영합니다.
	<form method='post' action='requestLogOut.jsp'>
		<input type="sumbit" value='로그아웃'>
	</form>

<%	
	}
%>


</body>
</html>