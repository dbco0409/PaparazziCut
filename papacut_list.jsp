<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>무제 문서</title>
<link href="papacut_list.css" rel="stylesheet" type="text/css" />
</head>

<body>
<!--파파라치컷 리스트-->
<div id="on"> <!--인기 파파라치컷을 랜덤으로 뽑는다.-->
<ul>
<li id="best">HIT CUT</li>
<li>더보기</li>
</ul>
</div>

<div id="bestimg">
<ul id="hot">
<li id="image"></li>
<li>글제목[추천수]</li>
<li>글쓴이 글쓴날짜 조회수</li>
</ul>
<ul id="hot">
<li id="image"></li>
<li>글제목[추천수]</li>
<li>글쓴이 글쓴날짜 조회수</li>
</ul>
<ul id="hot">
<li id="image"></li>
<li>글제목[추천수]</li>
<li>글쓴이 글쓴날짜 조회수</li>
</ul>
</div>

<!--기타 파파차리컷 목록-->
<div id="type">
<ul>
<li id="list">리스트로 보기</li>
<li>사진으로 보기</li>
</ul>
</div>

<!--리스트로 볼 때-->
<div id="listd">
<ul>
<li id="img"></li>
<li>글제목[댓글수]</li>
<li id="flo">글번호 글쓴이 날짜 조회수</li>
<li id="love">추천수</li>
</ul>
</div>
<div id="listd">
<ul>
<li id="img"></li>
<li>글제목[댓글수]</li>
<li id="flo">글번호 글쓴이 날짜 조회수</li>
<li id="love">추천수</li>
</ul>
</div>
<div id="listd">
<ul>
<li id="img"></li>
<li>글제목[댓글수]</li>
<li id="flo">글번호 글쓴이 날짜 조회수</li>
<li id="love">추천수</li>
</ul>
</div>

<!--글쓰기버튼-->
<div id="button">
<ul>
<li id="write">글쓰기</li>
</ul>
</div>




</body>
</html>
