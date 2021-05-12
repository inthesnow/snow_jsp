<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//데이터를 처리하는 페이지
	/*
	1. 전송되는 3가지 값을 받습니다.
	2. id = abc, pw=1234라면 로그인이라 간주하고 user_id이름의 실제 아이디 값을 담는 쿠키를 생성
	3.아이디, 비밀번호가 틀리면 로그인페이지로 리다이렉트
	4. 로그인 성공시 cookie_ex01_wellcome페이지로 리다이렉트 화면에 "~~~~아이디님 환영합니다"를 출력
	*/
	response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String[] idcheck = request.getParameterValues("idcheck");
	
	if(idcheck!=null){
		Cookie idCoo = new Cookie("id", id);
		idCoo.setMaxAge(1800);
		response.addCookie(idCoo);
	} else {
		Cookie idCoo = new Cookie("id", id);
		idCoo.setMaxAge(0);
		response.addCookie(idCoo);
	}
			
	if(!(id.equals("abc"))){
		response.sendRedirect("cookie_ex01.jsp");
	} else if(!(pw.equals("1234"))){
		response.sendRedirect("cookie_ex01.jsp");
	} else {
		response.sendRedirect("cookie_ex01_wellcome.jsp");
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