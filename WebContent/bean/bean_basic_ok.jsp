<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	
%>
<%--
	id = bean의 이름
	class = 실제사용할 클래스의 경로
	scope = bean의 사용범위
 
 	스코프 속성
 	page - 현제패이지에서만 사용가능
 	request - 다음페이지까지 사용가능
 	sessiom= 브라우저가종료되기 전까지 모든페이지에서 사용가능
 	application 톰켓(서버가)꺼질때까지
 --%>
 
 <jsp:useBean id="user" class="bean.ex.User" scope="request"></jsp:useBean>
 <!-- setter의 사용 -->
 <jsp:setproperty property="id" name="user" value="<%=id%>"/>
 <jsp:setproperty property="pw" name="urse" value ="<%=pw %>"/>
 <jsp:setproperty property="name" name="user" value="<%=name%>"/>
 <jsp:setproperty property="email" name="user" value="<%=email%>"/>
 
 <!-- getter의 사용 -->
 <jsp:getproperty property="id" name="user"/>
 <jsp:getproperty property="pw" name="user"/>
 <jsp:getproperty property="name" name="user"/>
 <jsp:getproperty property="email" name="user"/>