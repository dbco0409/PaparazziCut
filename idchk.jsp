<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<%
boolean isExist = false;

try {
    	String DB_URL="jdbc:mysql://localhost:3306/ppl";
     String DB_ID="adm"; 
     String DB_PASSWORD="1234";
 	 
	    Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
        
	    String id = request.getParameter("id");
	    
		String jsql = "select * from member where id = ?";   
        PreparedStatement  pstmt  = con.prepareStatement(jsql);
	    pstmt.setString(1, id);

	    ResultSet rs = pstmt.executeQuery();  	
        
        if(rs.next()) 
              isExist = true;
        else
             isExist = false;

    } catch (Exception e) {
        	out.println(e);
}
%>

<html>
<head>
<title>����� ID �ߺ� �˻�</title>
</head>

<body bgcolor="#ffffff">
<div>
<ul>
<li>
          ID:  <%=request.getParameter("id")%>
        </li>
		</ul>
		<ul>
    <li>

  <%  
		   if(isExist)  
                 out.println("�̹� �����ϴ� ID�Դϴ�.");
	       else 
                 out.println("��� ������ ID�Դϴ�. ");
  %>
       </li>
	   </ul>
<ul><li>
         <input type="button" value="�ݱ�" onclick="window.close()">
       </li>
</ul>
</div>
</body>
</html>