
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

</head>
<body>
<h1>hello</h1>
<c:out value="${'hello'}"></c:out>
<c:set var="myvar" value="${param.email}"/>

<c:out value="${myvar}"/>
</body>
</html>