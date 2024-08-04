<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
 <div>
  <h2>------//업체 회원가입//------</h2>
  <ul><li>
<iframe src="papaok1.htm" width="700" height="300" scrolling="auto"></iframe><br /></li>
<li><input type="radio" id="o" name="ok2" value="o" checked="checked" /><label>동의함</label> <input type="radio" id="x" name="ok2" value="x" onfocus="oked()"/><label>동의하지않음</label></li>
  <li>
<iframe src="papaok2.htm" width="700" height="300" scrolling="auto"></iframe><br /></li>
  <li><input type="radio" id="o" name="ok" value="o" checked="checked" /><label>동의함</label> <input type="radio" id="x" name="ok" value="x" onfocus="oked()"/><label>동의하지않음</label></li></ul>
  <form action="join_result.jsp" method="post" name="form">
  <input type="hidden" name="level" value="2" />
<ul>
<li>아이디</li>
<li><input type="text" name="id" /><input type="button" onclick="idCheck()" value="중복확인" /></li>
</ul>
<ul>
<li>비밀번호</li>
<li>
<input type="password" name="pwd" />
</li>
</ul>
<ul>
<li>비밀번호확인</li>
<li>
<input type="password" name="pwdtest" />
</li>
</ul>
<ul>
<li>대표자이름</li>
<li>
<input type="text" name="name"/>
</li>
</ul>
<ul>
<li>회사이름</li>
<li>
<input type="text" name="nickname" />
</li>
</ul>
<ul>
<li>패스워드 찾는 질문</li>
<li>
<input type="text" name="question" />
</li>
</ul>
<ul>
<li>패스워드 찾는 답</li>
<li>
<input type="text" name="dab" />
</li>
</ul>
<ul>
<li>사업자번호</li>
<li>
<input type="text" name="joo1" />-<input type="password" name="joo2"/>
</li>
</ul>
<ul>
<li>이메일</li>
<li>
<input type="text" name="email" />
</li>
</ul>
<ul>
<li>회사 주소</li>
<li>
<input type="text" name="zipcode" size="7" readonly> 
 <input type="button" value="우편번호검색" onClick="zipCheck()"><br>     
<input type="text" name="address1" size="40"  readonly><br>
<input type="text" name="address2" size="40">&nbsp<font size =2>(상세주소입력)</font>
</li>
</ul>
<ul>
<li>휴대폰 번호</li>
<li>
<select name="p1">
<option>010</option>
<option>011</option>
<option>019</option>
<option>018</option>
</select>-<input type="text" name="p2" />-<input type="text" name="p3" />
</li>
</ul>
<ul>
<li>회사 전화번호</li>
<li>
<select name="t1">
<option>02</option>
<option>051</option>
<option>053</option>
<option>043</option>
<option>042</option>
<option>041</option>
</select>-<input type="text" name="t2" />-<input type="text" name="t3" />
</li>
</ul>
<ul>
<li>메일발송</li>
<li>
<input type="radio" value="o" name="ok" />동의 <input type="radio" value="x" name="ok" />동의안함
</li>
</ul>
<ul>
<li></li>
<li>
<input type="button" value="회원가입" onclick="join()" /><input type="button" value="돌아가기" />

</li>
</ul>
</form>
</div>
<script type="text/javascript">
function oked(){
var q=window.confirm('동의하지 않으면 회원가입을 할 수 없습니다. 그래도 계속하시겠습니까?');
if (q){	
window.back();
}
else document.getElementById("x").checked="";
document.getElementById("o").focus();
}
function idCheck(){
var idx=form.id.value;
if (idx==""){
alert('아이디를 입력하세요');
form.id.focus();
}
else {
window.open('idchk.jsp?id='+idx,'idCheck','width=400, height=200, scrollbar=no');
}
}
function join(){
if (document.form.id.value==""){
	alert('아이디를 입력해주세요.');	
	form.id.focus();
	}
	else if(document.form.pwd.value==""){
	alert('비밀번호를 입력해주세요.');
	}
	else if(document.form.pwd.value!=document.form.pwdtest.value){
	alert('비밀번호가 일치하지 않습니다.');
	}
	else if(document.form.name.value==""){
	alert('대표자이름을 입력해주세요.');	
	}
	else if(document.form.nickname.value==""){
	alert('회사이름을 입력해주세요.');	
	}
	else if((document.form.joo1.value=="")||(document.form.joo2.value=="")){
	alert('사업자번호를 입력해주세요.');
	}
	else form.submit();
}

function zipCheck()
{
	window.open("zipCheck.jsp", "win", "width=600, height=200, scrollbars=yes, status=yes");
}

</script>
</body>
</html>