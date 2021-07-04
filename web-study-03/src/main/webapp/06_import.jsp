<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %> 
<!-- 날짜와 시간 정보를 원하는 형태로 깔끔하게 얻어오기 위해 -->
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Calendar date = Calendar.getInstance();
SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
%>
오늘은 <b><%= today.format(date.getTime()) %></b>입니다.<br>
<!-- getTime() 메소드로 Calendar 형을 Date형으로 변환한 후에 사용 -->
지금 시각은 <b><%= now.format(date.getTime()) %></b> 입니다.

</body>
</html>