<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%!private static final String DEFAULT_USER = "Guest";%>
<%
    String user = request.getParameter("user");
    if (user == null)
        user = DEFAULT_USER;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Hello User Application</title>
</head>
<body>
Hello,
<%=user%>!
<br />
<br />
<form action="greeting.jsp" method="POST">
    Enter your name:<br /> <input type="text" name="user" /><br /> <input type="submit" value="Submit" />
</form>
<html>
<head></body>
</html>
