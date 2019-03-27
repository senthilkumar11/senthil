<%@ page import="java.sql.*"%>  
  
<% String s=request.getParameter("val");  
int id=Integer.parseInt(s);  
  try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cogdb","root","root");  
PreparedStatement ps=con.prepareStatement("select * from employee1 where id=?");  
ps.setInt(1,id);  
ResultSet rs=ps.executeQuery();  
while(rs.next()){  
out.print(rs.getInt(1)+" "+rs.getString(2));  
}  
con.close();  
}catch(Exception e){e.printStackTrace();}  

%>  