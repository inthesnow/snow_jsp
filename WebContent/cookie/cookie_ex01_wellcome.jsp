<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies!=null) {
		for(Cookie c : cookies){
			if(c.getName().equals("id")){
				out.println(c.getValue()+"님의 방문을 환영합니다.");
			}
		}
	}
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