<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String id="";
	if (cookies!=null) {
		for(Cookie c : cookies){
			if(c.getName().equals("id")){
				id = c.getValue();
			}
		}
	} else {
		id=" ";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키를 사용한 로그인 연습</h3>

	<form action="cookie_ex01_result.jsp" method="post">
		id : <input type="text" name="id" value="<%=id%>"><br>
		pw : <input type="password" name="pw"><br>
		<input type="submit" value="login">
		<input type="checkbox" name="idcheck" value="check">아이디 기억하기		
	</form>
</body>
</html>