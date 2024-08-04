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
	String level = request.getParameter("level");
	String id = request.getParameter("id");   
	String pwd = request.getParameter("pwd");
	String	name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String	question = request.getParameter("question");
	String dab = request.getParameter("dab");
	String	 number = request.getParameter("joo1")+"-"+request.getParameter("joo2");
	String	 email = request.getParameter("email");
	String	 address = request.getParameter("address1")+request.getParameter("address2");
	String	 phone = request.getParameter("p1")+"-"+request.getParameter("p2")+"-"+request.getParameter("p3");
	String	 tell = request.getParameter("t1")+"-"+request.getParameter("t2")+"-"+request.getParameter("t3");
	String	 ok = request.getParameter("ok");

try {
 	String DB_URL="jdbc:mysql://localhost:3306/ppl";
     String DB_ID="adm"; 
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	 String jsql = "INSERT INTO member (id, pwd, name, nickname, number, email, address, phone, tell, pwdq, pwda, mailing, level) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";	

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,id);
	 pstmt.setString(2,pwd);
	 pstmt.setString(3,name);
	 pstmt.setString(4,nickname);
	 pstmt.setString(5,number);
	 pstmt.setString(6,email);
	 pstmt.setString(7,address);
	 pstmt.setString(8,phone);
	 pstmt.setString(9,tell);
	 pstmt.setString(10,question);
	 pstmt.setString(11,dab);
	 pstmt.setString(12,ok);
	 pstmt.setString(13,level);

	 pstmt.executeUpdate();
  } catch(Exception e) { 
		out.println(e);
}

	%>
	회원가입이 완료되었습니다.
 </body>
</html>
