<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="sailing_write.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div>
<h2>판매중 제조사의 글쓰기</h2>
<ul>
<li>파파라치코드</li>
<li><input type="text" name="paparazicode" /></li>
</ul>
<ul>
<li>상품이름</li>
<li><input type="text" name="sail" /></li>
</ul>
<ul>
<li>상품코드</li>
<li>
<select name="code">
<option value="드라마">드라마</option>
<option value="예능">예능</option>
</select>
</li>
</ul>
<ul>
<li>상품가격</li>
<li><input type="text" name="price" />원</li>
</ul>
<ul>
<li>상품사진</li>
<li><input type="file" name="image" /></li>
</ul>
<ul>
<li>제고량</li>
<li><input type="text" name="gitar" /></li>
</ul>
<ul>
<li>상품정보에 들어갈 사진</li>
<li><input type="file" name="image1"><br />
</li>
</ul>
<ul>
<li>상품정보에 들어갈 내용</li>
<li><textarea cols="20" rows="10" name="text1"></textarea><br />
</li>
</ul>
<ul>
<li>택배정보에 들어갈 사진</li>
<li><input type="file" name="image1"><br />
</li>
</ul>
<ul>
<li>택배정보에 들어갈 내용</li>
<li><textarea cols="20" rows="10" name="text1"></textarea><br />
</li>
</ul>
<ul>
<li>글 하단에 들어갈 사진</li>
<li><input type="file" name="image1"><br />
</li>
</ul>
<ul>
<li>글 하단에 들어갈 내용</li>
<li><textarea cols="20" rows="10" name="text2"></textarea><br />
</li>
</ul>
<ul>
<li></li>
<li><input type="button" value="글쓰기" /><input type="button" value="취소하기" /><br />
</li>
</ul>
</div>
</body>
</html>