<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<div>
<h2>이벤트 글쓰기[관리자]</h2>
<ul>
<li>참여기간</li>
<li>
<select name="syear">
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
</select>
년
<select name="smonth">
<%
for(int i=1; i<=12; i++){
%>
<option><%i%></option>
<% } %>
</select>
월
<select name="sdate">
<%
for(int j=1; j<=30; j++){
%>
<option><%i%></option>
<% } %>
</select>
일

-
<select name="eyear">
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
</select>
년
<select name="emonth">
<%
for(int i=1; i<=12; i++){
%>
<option><%i%></option>
<% } %>
</select>
월
<select name="edate">
<%
for(int j=1; j<=30; j++){
%>
<option><%i%></option>
<% } %>
</select>
일
</li>
</ul>
<ul>
<li>
이벤트 이름
</li>
<li><input type="text" name="name" /></li>
</ul>
<ul>
<li>
썸네일 이미지
</li>
<li><input type="file" name="sum" /></li>
</ul>
<ul>
<li>
내용에 들어갈 이미지
</li>
<li><input type="file" name="image" /></li>
</ul>
<ul>
<li>
내용에 들어갈 텍스트
</li>
<li><textarea cols="20" rows="10" name="text"></textarea></li>
</ul>
<ul>
<li>당첨자선정방식</li>
<li><select name="people">
<option>선착순</option>
<option>추첨</option>
<option>참여시 바로 당첨</option>
</select></li>
</ul>
<ul>
<li>
당첨자발표
</li>
<li><select name="eyear">
<option>14</option>
<option>15</option>
<option>16</option>
<option>17</option>
<option>18</option>
<option>19</option>
<option>20</option>
</select>
년
<select name="emonth">
<%
for(int i=1; i<=12; i++){
%>
<option><%i%></option>
<% } %>
</select>
월
<select name="edate">
<%
for(int j=1; j<=30; j++){
%>
<option><%i%></option>
<% } %>
</select>
일
</li>
</ul>
<ul>
<li>
<input type="button" value="글쓰기" /><input type="button" value="돌아가기" />
</li>
</ul>
</div>
</body>
</html>