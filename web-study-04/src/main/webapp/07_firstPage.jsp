<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name","page man");
	request.setAttribute("name","request man");
	session.setAttribute("name","session mane");
	application.setAttribute("name","application man");
	
	System.out.println("fistPage.jsp");
	System.out.println("하나의 페이지 속성:"+pageContext.getAttribute("name"));
	System.out.println("하나의 요청 속성:"+request.getAttribute("name"));
	System.out.println("하나의 세션 속성:"+session.getAttribute("name"));
	System.out.println("하나의 애플리케이션 속성:"+application.getAttribute("name"));

	request.getRequestDispatcher("07_secondPage.jsp").forward(request,response);
%>

<!-- 15줄 :forward 방식으로 설정한 속성값이 유지되는지 확인 -->