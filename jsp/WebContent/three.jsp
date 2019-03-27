<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String str1=request.getAttribute("key1").toString();
out.println(str1);
ArrayList al=(ArrayList)session.getAttribute("key2");
for(int i=0; i<al.size(); i++)
{
	out.println(al.get(i));
}
String message=application.getAttribute("key3").toString();
out.println(message);
%>
</body>
</html>