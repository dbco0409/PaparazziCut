<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
  request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");   

	String DB_URL="jdbc:mysql://localhost:3306/ppl";
     String DB_ID="adm"; 
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	 String jsql = "select id, pwd,level from member where id=?";
 PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setString(1, id);
       ResultSet rs = pstmt.executeQuery();
 if(rs.next())
    {
		int lvl=rs.getInt("level");
		String pwdd=rs.getString("pwd");
        if (pwd.equals(pwdd))  
        {
             session.setAttribute("sid", id);
             response.sendRedirect("index.jsp");
			 %>
			 <%=id%>
			 <%

		 }
	}
		 else { 
%>
<script type="text/javascript">
alert('로그인에 실패하였습니다.');
</script>
<% } %>
  
 </body>
</html>
