<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=IUTF-8">
    <title>Простое приложение</title>
</head>
<body>
<!-- импорт пакетотов и классов, необходиых для скриптов -->

<%@ page import="ifmo.ru.business.User" %>
<%@ page import="ifmo.ru.business.UserIO" %>
<%
    // получение параметров из объекта request
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String emailAddress = request.getParameter("emailAddress");
    // получение реального пути для файла EmailList.txt
    ServletContext sc = this.getServletConfig().getServletContext();
    String path = sc.getRealPath("/WEB-INF/EmailList.txt");
    // использование регулярных объектов Java
    User user = new User(firstName, lastName, emailAddress);
    UserIO.add(user, path);
%>
<!---->
<p>This email address was added to our list on
    <%= new java.util.Date()%></p>

<h1>Спасибо за регистрацию в списке email</h1>


<p>Ниже представлена введенная Вами информация:</p>
<table cellspacing="5" cellpadding=" 5 " border="1">
    <tr>
        <td align="right">Имя:</td>
        <td><%=user.getFirstName() %></td>
    </tr>
    <tr>
        <td align="right">Фамилия :</td>
        <td><%=user.getLastName() %></td>
    </tr>
    <tr>
        <td align="right">Email адрес:</td>
        <td><%=user.getEmailAddress() %></td>
    </tr>
</table>
<p>
    Чтобы ввести другой адрес, нажмите кнопку Back <br> в браузере
    или кнопку Возврат <br> ниже.
</p>
<form action="/lab4/html/email_list.html" method="post">
    <input type="submit" value="Возврат">
</form>
</body>
</html>
