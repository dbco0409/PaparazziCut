<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<div>
<h2>회원가입 -  제조사</h2>
<ul>
<li>아이디</li>
<li><input type="text" name="id" /></li>
</ul>
<ul>
<li>비밀번호</li>
<li>
<input type="password" name="pwd" />
</li>
</ul>
<ul>
<li>제조사 이름</li>
<li>
<input type="text" name="name" />
</li>
</ul>
<ul>
<li>제조사 성격</li>
<li>
<select name="company">
<option>개인/소규묘</option>
<option>기업/프랜차이즈</option>
<option>패션/의류</option>
<option>신발</option>
<option>잡화</option>
</select>
</li>
</ul>
<ul>
<li>사업자 번호</li>
<li>
<input type="text" name="joo1" />-<input type="password" name="joo2" />
</li>
</ul>
<ul>
<li>이메일</li>
<li>
<input type="text" name="email" />
</li>
</ul>
<ul>
<li>회사 위치</li>
<li>
<input type="button" value="주소검색" /> <input type="text" name="address1" /> <input type="text" name="address2" />
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
<input type="button" value="회원가입" /><input type="button" value="돌아가기" />

</li>
</ul>
</div>
</body>
</html>