<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.MemberVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 로그인한 사용자는 로그인과 회원가입 링크는 보이지 않게 한다. 
	  로그인하지 않으면 회원정보 수정은 보이지 않는다.
-->
Model2 Architecture MVC Pattern 적용 회원 관리 프로그램<br>
<a href="find.html">회원 검색</a><br>


 <%
 		MemberVO vo=(MemberVO)session.getAttribute("loginInfo");
 		if(vo==null){
 %>
 <a href="register.jsp">회원가입</a><br>
<a href="login.jsp">로그인</a>
<%   }else{ %>
			<%=vo.getName() %>님 로그인 중입니다<br>
			<a href="update.jsp">회원정보수정하기</a>
<%	  } %>

</body>
</html>