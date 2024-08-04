<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<script type="text/javascript">
function join(){
if (document.form.id.value==""){
	alert('아이디를 입력해주세요.');	
	form.id.focus();
	}
	else if(document.form.pwd.value==""){
	alert('비밀번호를 입력해주세요.');
	}
	else form.submit();
}
</script>
<form action="login_result.jsp" method="post" name="form">
<div>
<h2>로그인</h2>
<ul>
<li>
아이디
</li>
<li>
<input type="text" name="id" />
</li>
</ul>
<ul>
<li>
비밀번호
</li>
<li>
<input type="password" name="pwd" />
</li>
</ul>
<ul>
<li>
</li>
<li>
<input type="button" value="로그인" onClick="join()" /> <input type="button" value="회원가입" onClick="location.href='join_type.jsp'" />
</li>
</ul>
<ul>
<li>
</li>
<li>
<input type="button" value="아이디 찾기" onClick="location.href='join_id.jsp'" /> <input type="button" value="비밀번호 찾기" onClick="location.href='join_pwd.jsp'" />
</li>
</ul>
</div>
</form>
</body>
</html>