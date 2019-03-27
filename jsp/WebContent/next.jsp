<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! String name; %>
<% String username=request.getParameter("t1");
ArrayList al=new ArrayList();
al.add("ABc");
al.add("xyz");
request.setAttribute("key1", username);
session.setAttribute("key2", al);
application.setAttribute("key3", "Welcome to our website");
out.println(application.getServletContextName());
out.println(config.getServletName());
%>
<jsp:include page="two.jsp"></jsp:include>
<%out.println("hi"); %>
</body>
</html>