<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="model.MemberVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function logout(){
	var flag= confirm("�α׾ƿ� �Ͻðڽ��ϱ�?");
	if(flag){
		location.href="LogoutServlet";
	}else{
		location.href="cafe.jsp";
	}
}
</script>
</head>
<body>
<%MemberVO vo=(MemberVO)session.getAttribute("loginInfo");
if(vo!=null){
%>
<%=vo.getName() %>�� ������ ȯ���մϴ�.

<input type="button" value="�α׾ƿ�"onclick="logout()">

<%}else{ %>
	<script type="text/javascript">
		alert("�α����ؾ� ī�����尡��!");
		location.href="login.jsp";
	</script>
<%} %>

</body>
</html>