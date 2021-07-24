<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
forward() 메소드는 requestDispatcher 객체로 접근해야 호출이 가능

requestDispatcher 객체는 request 객체의 getRequestDispatcher()메소드를 호출하여 얻어냄

forward() 메소드를 호출하면 getRequestDispatcher()메소드의 매개 변수로 지정한 페이지로 이동

포워드 방식은 서버상에서 페이지가 이동되기 떄문에 브라우저는 알아채지 못하고  URL도 변경되지 않음
기존의 request와 response는 유지되어 이동

getAttribute() 메소드는 리턴 타입이 Object형이므로 정수형(int) 변수에 저장하려면 cast 연산자를 이용해야함
int age=(Integer)request.getAttribute("age");

넘겨진 String 형 데이터를 이동한 페이지에서 얻어오려면 리턴 타입이 Object형이므로 cast 연산자를 이용해야함

이전 페이지에서 사용한 정보를 다음페이지에서 사용하기 위해 request객체를 사용
ex)   request.setAttribute("name","request man");
application 객체도 정보(자원)를 속성에 저장할수 있음
ex)   application.setAttrobute("name","application man");
application 객체에 저장된 내용은 하나의 프로젝트 내에 모든 JSP페이지에서 공통적으로 사용가능

-------------------내장 객체의 영역
- 객체의 유효기간
	- page 			= 하나의 jsp페이지를 처리할 떄 사용
	- request 		= 하나의 요청을 처리할 떄 사용
	- session		= 하나의 브라우저와 관련된 영역
	- application 	= 하나의 웹 애플리케이션과 관련된 영역
 
 setAttribute()메소드로 파라미터가 아닌 원하는 정보도 저장해 두면 다음 페이지에서 
 getAttribute()메소드를 사용하여 얻어올 수 있음
 
 JSP 내장 객체에서 정보를 주고 받기 위한 메소드
	setAttribute(name, value) ->이름(name)에 값(value)을 설정
	getAttribute(name)			->매개변수로 준 이름에 설정된 값을 얻어냄
	getAttributeNames()			->현재 객체에 관련된 모든 속성의 이름을 뽑아냄
	removeAttribute(name)		->매개변수로 준 이름에 설정된 값을 제거합니다.
	
	name 매개변수는 String 형  value 매개변수는 최상위 클래스인 Object형으로 정의
	
-------------------액션 태그
<jsp:..속성="값">내용</jsp:...>
ex)		<jsp:forward page="yellow02.jsp"/>

 - <jsp:forward>: 현재 jsp 페이지에서 URL로 지정한 특정 페이지로 넘어갈때 사용하는 태그
 - <jsp:param>: <jsp:forward> 태그로 이동하는 페이지에 정보를 추가하고 싶은 경우 
 				<jsp:param>을 사용, 단독으로 사용 불가
	 ex)<jsp:forward page="main.jsp">
	 		<jsp:param value="Bue Su Ji" name="username" />
	 	<jsp:forward> 
 				
 	
 

 -->
 