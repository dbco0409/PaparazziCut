<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시판 추가하는 페이지</title>
</head>

<body>

<% 
String menu=request.getParameter("menu");
String table=request.getParameter("table_name");
String name=request.getParameter("name");

%>

</body>
</html>


<ul>
<li>게시판 TABLE</li>
<li><input type="text" name="table_name" /></li>
<li>영문자, 숫자, _만 가능(공백없이 20자 이내)</li>
</ul>
<ul>
<li>게시판 제목</li>
<li><input type="text" name="name" /></li>
</ul>
<ul>
<li>서브메뉴 이미지</li>
<li><input type="text" name="file" /></li>
</ul>
<ul>
<li>목록보기 권한</li>
<li>
<select name="list_level">
<option name="4">로그인하지 않은 회원</option>
<option name="3">일반회원</option>
<option name="2">제조사</option>
<option name="1">관리자</option>
</select>
</li>
</ul>
<ul>
<li>글읽기 권한</li>
<li>
<select name="view_level">
<option name="4">로그인하지 않은 회원</option>
<option name="3">일반회원</option>
<option name="2">제조사</option>
<option name="1">관리자</option>
</select>
</li>
</ul>
<ul>
<li>글쓰기 권한</li>
<li>
<select name="write_level">
<option name="4">로그인하지 않은 회원</option>
<option name="3">일반회원</option>
<option name="2">제조사</option>
<option name="1">관리자</option>
</select>
</li>
</ul>
<ul>
<li>코멘트쓰기 권한</li>
<li>
<select name="cmt_level">
<option name="4">로그인하지 않은 회원</option>
<option name="3">일반회원</option>
<option name="2">제조사</option>
<option name="1">관리자</option>
</select>
</li>
</ul>
<ul>
<li>구매가능 권한</li>
<li>
<select name="buy_level">
<option name="5">특별지정회원</option>
<option name="4">로그인하지 않은 회원</option>
<option name="3">일반회원</option>
<option name="2">제조사</option>
<option name="1">관리자</option>
</select>
</li>
<li>레벨5 특별지정회원은 아래 특별지정회원 란에 입력한 회원을 가리킴</li>
</ul>
<ul>
<li>구매가능 권한</li>
<li>
<select name="buy_level">
<option name="5">특별회원</option>
<option name="4">로그인하지 않은 회원</option>
<option name="3">일반회원</option>
<option name="2">제조사</option>
<option name="1">관리자</option>
</select>
</li>
<li>레벨5 특별회원은 아래 특별회원지정 란에 입력된 회원을 가리킴</li>
</ul>
<ul>
<li>특별회원지정</li>
<li><input type="text" name="buy_5level" /></li>
<li>아이디와 아이디 사이는 | 로 구분하세요.</li>
</ul>
<ul>
<li>포인트 설정</li>
</ul>
<ul>
<li>글쓰기 포인트</li>
<li><input type="text" name="write_point" /></li>
</ul>
<ul>
<li>글추천시 글쓴이 포인트</li>
<li><input type="text" name="writer_point" /></li>
</ul>
<ul>
<li>댓글쓰기 포인트</li>
<li><input type="text" name="cmt_point" /></li>
</ul>
<ul>
<li>분류</li>
<li><input type="text" name="ctg" /></li>
<li>분류와 분류 사이는 | 로 구분하세요.</li>
</ul>
<ul>
<li>비밀글 사용</li>
<li>
<select type="secret">
<option name="x">사용하지 않음</option>
<option name="o">항상 사용</option>
<option name="m">체크박스</option>
</select>
</li>
</ul>
<ul>
<li>추천 사용</li>
<li>
<input type="checkbox" name="pluson" />
</li>
</ul>
<ul>
<li>답글 사용</li>
<li>
<input type="checkbox" name="replyon" />
</li>
</ul>
<ul>
<li>파일업로드 사용</li>
<li>
<input type="checkbox" name="loadon" />
</li>
</ul>
<ul>
<li>다중글쓰기 사용</li>
<li>
<input type="checkbox" name="writeson" />
</li>
</ul>
<ul>
<li>게시판 스킨</li>
<li>
<select type="skin">
<option>파파라치컷전용</option>
<option>판매중 전용</option>
<option>판매예정 전용</option>
<option>게시판 전용</option>
<option>갤러리 전용</option>
<option>FAQ 전용</option>
</select>
</li>
</ul>
<ul>
<li><input type="button" value="확인" /><input type="button" value="목록" /></li>
</ul>
</div>
</body>
</html>