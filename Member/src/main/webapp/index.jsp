<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.MemberVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- �α����� ����ڴ� �α��ΰ� ȸ������ ��ũ�� ������ �ʰ� �Ѵ�. 
	  �α������� ������ ȸ������ ������ ������ �ʴ´�.
-->
Model2 Architecture MVC Pattern ���� ȸ�� ���� ���α׷�<br>
<a href="find.html">ȸ�� �˻�</a><br>


 <%
 		MemberVO vo=(MemberVO)session.getAttribute("loginInfo");
 		if(vo==null){
 %>
 <a href="register.jsp">ȸ������</a><br>
<a href="login.jsp">�α���</a>
<%   }else{ %>
			<%=vo.getName() %>�� �α��� ���Դϴ�<br>
			<a href="update.jsp">ȸ�����������ϱ�</a>
<%	  } %>

</body>
</html>