<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function checkLogin(){
	var r=document.LoginForm;
	if(r.userId.value==""){
		alert("아이디를 입력하세요~~!!!");
		r.userId.value==""
		r.userId.focus();
		return false;
	}
	if(r.userPass.value==""){
		//r.userPass.value="" 일경우 에러는 없지만 전송시 패스워드의 값이 ""으로 넘어간다.
		alert("패스워드를 입력하세요~~!!!");
		r.userPass.value==""
		r.userPass.focus();
		return false;
	}
}
</script>
</head>
<body>
<form action="LoginSerlvet" method="post" name="LoginForm" 
onsubmit="return checkLogin()">
아이디 : <input type="text" name="userId"><br><br>
패스워드 : <input type="password" name="userPass"><br><br>
<input type="submit" value="로그인">
</form>
</body>
</html>




