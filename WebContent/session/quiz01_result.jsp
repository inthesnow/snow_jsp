<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="session.ex.User"%>
<%
	/*
	1. 사용자가 입력한 값을 받은 다음에 값을 저장 할 수 있는 User(자바클래스) 생성
	2. 받은 값을 User에 저장하고, 저장한 User 클래스를 세션에 저장하세요.
	3. quiz01_ok페이지로 리다이렉트(세션에 저장된 id, name만 뽑아서 출력해주세요)
	*/
	request.setCharacterEncoding("UTF-8");
	User user = new User();
	user.setId(request.getParameter("id"));
	user.setPw(request.getParameter("pw"));
	user.setName(request.getParameter("name"));
	user.setEmail(request.getParameter("email"));
	user.setRegion(request.getParameter("region"));
	
	session.setAttribute("User", user);
	
	response.sendRedirect("quiz01_ok.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>