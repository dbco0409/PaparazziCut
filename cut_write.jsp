<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>무제 문서</title>
<link href="cut_write.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
window.onload=function(){
document.getElementById('fil').style.display=none;
document.getElementById('lin').style.display=none;	
}
function view1(){
	document.getElementById('fil').style.display=display;
}
function view2(){
	document.getElementById('lin').style.display=display;
}
</script>
</head>

<body>
<div>
<h2>파파라치컷 단일 글쓰기</h2>
<ul>
<li id="tl"></li>
<li id="cs">
<textarea cols="40" rows="5" disabled="disabled">파파라치컷의 사진들은 인기가 많아지거나 제조사가 원할 경우 사진에 나온 제품을 구매할 수도 있습니다. 이것에 동의하시겠습니까? </textarea>
</li>
</ul>
<ul>
<li id="tl"></li>
<li id="cs">
<input type="radio" name="a" />동의 <input type="radio" name="b" />동의하지않음
</li>
</ul>
<ul>
<li id="tl">제목</li>
<li id="cs"><input type="text" name="title" /> <input type="radio" value="o" />공개 <input type="radio" value="x" />비공개</li>
</ul>
<ul>
<li id="tl">내용</li>
<li id="cs"><textarea cols="40" rows="25" name="text"></textarea></li>
</ul>
<ul>
<li id="tl">사진 첨부</li>
<li id="cs"><input type="file" name="file" /></li></ul>
<ul>
<li id="tl">사진 단가</li>
<li id="cs"><input type="text" name="price" /></li></ul>
<ul>
<input type="hidden" name="ctg" value="사진" />
<li  id="tl"></li>
<li id="cs"><input type="button" value="글쓰기" /><input type="reset" value="취소하기" /></li>
</ul>
</div>


</div>
<p>&nbsp;</p>
</body>
</html>
