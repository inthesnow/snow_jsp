<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forward로 넘어오는 bean을 사용하기</h2>
	
	<jsp:useBean id="user" class="bean.ex.User" scope="request"></jsp:useBean>
	
	id : <jsp:getProperty property="id" name="user"/>
	email : <jsp:getProperty property="email" name="user"/>
</body>
</html>