<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int num1 = 20;
		int num2 = 10;
		int add = num1 +num2;
	%>
	<%=num1 %>+<%=num2 %>=<%=add %>
</body>
</html>

<!-- 
서블릿: 자바코드 내부에 HTML
JSP : HTML문서 내부에 자바 코드
복잡한 로직은 서블릿에 기술해 놓고 결과만을 JSP 페이지를 통해 제공
 -->