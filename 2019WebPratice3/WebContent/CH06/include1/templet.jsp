<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% String contentPage = request.getParameter("CONTENTPAGE");
	if (contentPage==null){
		contentPage="content.jsp";
	}
%>


	<header>
	<!-- top영역 -->
		<jsp:include page="top.jsp" flush="false"></jsp:include>
	</header>
	<div id="content">
	 <section id="areaSub">
	 	<!-- left영역 -->
	 	<jsp:include page="left.jsp" flush="false"></jsp:include>
	 </section>
	 <section id="areaMain">
		 <!-- content 영역 -->
	     <jsp:include page="<%= contentPage %>" flush="false"></jsp:include>
	 </section>
	</div>
	<footer>
		<!-- bottm영역 -->
	<jsp:include page="bottom.jsp" flush="false"></jsp:include>
	
	
	
	</footer>
</body>
</html>