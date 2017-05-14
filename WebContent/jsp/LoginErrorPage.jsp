<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h3> An exception has occurred</h3>
<%@ page isErrorPage="true" %>
<table>
    <tr>
        <td>Exception Class:</td>
        <%-- Получение имени класса исключения, где 'exception' является неявным объектом, предоставляемым JSP --%>
        <td><%= exception.getClass() %></td>
    </tr>
    <tr>
        <td>Message:</td>
        <%-- Получение сообщения исключения, где 'exception' является неявным объектом, предоставляемым JSP --%>
        <td><%= exception.getMessage() %></td>
    </tr>
</table>
<br>
To go back to the login page click Login Page button
<form name="f2" action="/lab4/html/LoginPage.html">
    <input type="submit" name="button1" value="Login Page">
</form>
</body>
</html>
