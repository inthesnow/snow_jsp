<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션은 서버와 정보를 유지하기 위한 수단으로 사용하는 내장객체
	//setattribute("이름", 값)
	session.setAttribute("user_id", "aaa123");
	session.setAttribute("user_name", "hong");
	
	session.setMaxInactiveInterval(3600);//3600sec
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="session_get.jsp">세션값 확인하기</a>
</body>
</html>