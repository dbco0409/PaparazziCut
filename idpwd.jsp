<%@ page import="java.sql.*, java.text.*" %>   
<%@ page contentType="text/html;charset=euc-kr" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> New Document </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>

 <body>
  <%
  
  String nm = request.getParameter("name");   
  String nb = request.getParameter("joo1")+"-"+request.getParameter("joo2");
try{
	request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/ppl";
     String DB_ID="adm"; 
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

String jsql = "select id, pwd, name, number from member where name=? and number=?";
 PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setString(1, nm);
	    pstmt.setString(2, nb);
       ResultSet rs = pstmt.executeQuery();

	 if(rs.next())
	 {
		String id = rs.getString("id"); 
		String pwd = rs.getString("pwd"); 
		%>

회원님의 아이디는 <%=id%> 입니다.
회원님의 비밀번호는 <%=pwd%> 입니다.<%

 } else %>
등록되지 않은 회원 입니다. 회원가입을 하시겠습니까?
<input type="button" value="yes" onclick="location.href='join_open.jsp'"> <input type="button" value="no" onclick="window.back()">
<%

}catch (Exception e) {
	out.println(e);
	} 
%>
 </body>
</html>
