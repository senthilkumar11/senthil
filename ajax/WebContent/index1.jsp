<!DOCTYPE html>  
<html>  
<head>  
<style>  
div.box{margin:2px;border:1px solid pink;padding:10px;background-color:#e3e3e3}  
</style>  
</head>  
<body>  
  
<%@ page import="java.sql.*" %>  
<%  
String name=request.getParameter("t1");  
String message=request.getParameter("t2");  

try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cogdb","root","root");  
PreparedStatement ps=con.prepareStatement("insert into user2(name,message) values(?,?)");  
ps.setString(1,name);  
ps.setString(2,message);  
int i=ps.executeUpdate();  
  
PreparedStatement ps2=con.prepareStatement("select * from user2");  
ResultSet rs=ps2.executeQuery();  
  
out.print("<hr/><h2>Comments:</h2>");  
while(rs.next()){  
out.print("<div class='box'>");  
out.print("<p>"+rs.getString("name")+"</p>");  
out.print("<p><strong>By: "+rs.getString("message")+"</strong></p>");  
out.print("</div>");  
}  
  
con.close();  
}catch(Exception e){out.print(e);}  
  

%>  
</body>  
</html>  