<%@ page import="java.sql.*, java.text.*" %>   
<%@ page contentType="text/html;charset=euc-kr" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> New Document </title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 </head>

 <body>
  <%
  	request.setCharacterEncoding("euc-kr");
	 String id = request.getParameter("id");   
  String nm = request.getParameter("name");   
  String joo1=request.getParameter("joo1");
  String joo2=request.getParameter("joo2");
  String nb = joo1+"-"+joo2;
try{
	request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/ppl";
     String DB_ID="adm"; 
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

String jsql = "select pwd from member where name=? and number=? and id=?";
 PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setString(1, nm);
	    pstmt.setString(2, nb);
		  pstmt.setString(3, id);
       ResultSet rs = pstmt.executeQuery();

	 if(rs.next())
	 {
		String pwd = rs.getString("pwd"); 
		%>
<p>비밀번호를 찾았습니다.</p>
<p><%=pwd%></p>
<p>로그인하시겠습니까?</p>
<p><input type="button" value="yes" onclick="location.href='login.jsp'"></p>

<%

 } else %>
<p>아이디를 찾지 못했습니다. </p>
<p><input type="button" value="다시찾기" onclick="location.href='join_id.jsp'"></p>
<%

}catch (Exception e) {
	out.println(e);
	} 
%>
 </body>
</html>
