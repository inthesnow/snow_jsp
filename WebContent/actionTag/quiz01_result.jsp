<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 값을 받아서 평균을 구합니다
	평균이 60점이상이라면 quiz01_ok.jsp로 이동해서
	~~님의 평균은 xx점 합격입니다
	
	평균이 60점 이하인 경우는 quiz01_no.jsp로 이동해서 ~~님 평균 xx점 불합격
	
	조건 : 세션을 사용하지 않습니다.
	*/
	request.setCharacterEncoding("UTF-8");
	
	String name = (String)request.getParameter("name");
	String kor = (String)request.getParameter("kor");
	String math = (String)request.getParameter("math");
	String eng = (String)request.getParameter("eng");
	int k = Integer.parseInt(kor);
	int m = Integer.parseInt(math);
	int e = Integer.parseInt(eng);
	int avg = (k+m+e)/3;
	request.setAttribute("avg", avg);
	if(avg>=60) {
		request.getRequestDispatcher("quiz01_ok.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("quiz01_no.jsp").forward(request, response);
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