<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int a=5;

public  void display(){
	System.out.println("welcome");
}

%>
<%
for(int i=0; i<3; i++)
{
	out.println(a++);
}
 

display();
Player p=new Player();
int id=Integer.parseInt(request.getParameter("t1"));
String name=request.getParameter("t2");

p.setId(id);
p.setName(name);
%>
<table>
<th> ID</th><th>Name</th>
<tr><td><%=p.getId() %></td></tr>
<tr><td><%=p.getName() %></td></tr>
</table>
</body>
</html>