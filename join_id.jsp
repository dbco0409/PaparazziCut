<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>일반회원가입</title>
<link href="join.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function oked(){
var q=window.confirm('동의하지 않으면 회원가입을 할 수 없습니다. 그래도 계속하시겠습니까?');
if (q){	
window.back();
}
else document.getElementById("x").checked="";
document.getElementById("o").focus();
}
</script>
</head>

<body>
  <div>
  <h2>------//아이디 찾기//------</h2>
  <ul>
  <li>
  아이디 찾기</li>
  </ul>
  </div>
   <form method="post" action="join_id_result.jsp">
  <div id="m">
  <ul>
 <li>이름<input type="text" name="name" size="15" /></li>
 <li>주민등록번호 <input type="text" name="joo1" size="10" />-<input type="text" name="joo2" size="10" /></li>
 <li><input type="button" value="아이디찾기" onclick="submit()" /></li>
  </ul>
  </div>
  </form>
</body>
</html>