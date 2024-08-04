<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%                       
 request.setCharacterEncoding("euc-kr");
String id = (String)session.getAttribute("sid");
String mal="";

String DB_URL="jdbc:mysql://localhost:3306/ppl";
     String DB_ID="adm"; 
     String DB_PASSWORD="1234";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

 String jsql = "select level from member where id=?";
 PreparedStatement pstmt = con.prepareStatement(jsql);
pstmt.setString(1, id);
ResultSet rs = pstmt.executeQuery();

if (rs.next()){
int level=rs.getInt("level");

if(id==null||id.equals("")) 
{   
 mal="로그인을 안했어요."; 
}
else if(level==1){
mal="관리자임";
}
else if(level==2){
mal="업체임";
}
else 
{
mal="일반인임"; 
} 
}

%>