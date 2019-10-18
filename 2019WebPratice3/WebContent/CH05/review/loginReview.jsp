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
	String box=(String)session.getAttribute("box");
	String idstr=null, pwstr=null, checkstr=null;
	if (check == null){
		idstr = ""; pwstr =""; checkstr ="";
	} else {
		idstr=id,pwstr=pw,checkstr="checked";
	}
		/*빈폼 */
%>		
	<form method="post" action="loginReviewProc.jsp">

	아이디: <input type="text" name="id" value <%=idstr %>><p> 
	<!-- 아이디: <input type="text" name="id" values="abc"><p> -->
	<!-- 일경우 values값은 시작때 아이디에 abc라는 단어가 남아있음 -->
	비밀번호:<input type="password" name="pw" value <%=pwstr %>><p>
	<input type="checkbox" name="idSave" checked> 아이디/비밀번호 저장" <br>
	<!-- <input type="checkbox" name="idSave" checked> 일 경우 체크 되어있음 -->
	<input type="submit" value="확인">
	</form>
<%		
	} else {

%>
	<%=id %>님,환영합니다.
	<form method='post' action='logoutReviewProc.jsp'>
		<input type="sumbit" value='로그아웃'>
	</form>

<%	
	}
%>


</body>
</html>