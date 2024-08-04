<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="sailing_write.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%
int paparazicode=Integer.parseInt(reuqest.getParameter("paparazicode"));
String sail=request.getParameter("sail");
String code=request.getParameter("code");
int price=Integer.parseInt(request.getParameter("price"));

//상품사진업로드

int gitar=Integer.parseInt(request.getParameter("gitar"));
String text1=request.getParameter("text1");

%>
</body>
</html>