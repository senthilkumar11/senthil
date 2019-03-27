<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="text-align: center;color: navy;font-style: italic;font-size: xx-large;font-weight:900;">
	<% 
	String a=request.getParameter("name");
	int b= Integer.parseInt(request.getParameter("id"));
	out.println(a+" "+b);
	%>
</body>
</html>