<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%
    String[] fruits = request.getParameterValues("fruit");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Hello User Application</title>
</head>
<body>
<h2>Your Selections</h2>
<%
    if (fruits == null) {
%>You did not select any fruits.<%
} else {
%><ul>
    <%
        for (String fruit : fruits) {
            out.println("<li>" + fruit + "</li>");
        }
    %>
</ul>
<%
    }
%>
</body>
</html>
