<%@page import="bean.ex.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	
	User user = new User();
	user.setId(id);
	user.setEmail(email);
	
	//request에 user를 강제로 저장
	request.setAttribute("user", user);
	
	//forward로 이동
	request.getRequestDispatcher("bean_java_ex03.jsp").forward(request, response);
	
%>