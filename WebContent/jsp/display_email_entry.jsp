<%@ page import="ifmo.ru.business.UserIO" %><%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 17:25
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
<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>

<jsp:useBean id="user" scope="session" class="ifmo.ru.business.User" />
<jsp:setProperty name="user" property="*" />
<%
    ServletContext sc = this.getServletConfig().getServletContext();
    String path = sc.getRealPath("/WEB-INF/EmailList.txt");
    UserIO.add(user, path);
%>
<table cellspacing="5" cellpadding="5" border="1">
    <tr>
        <td align="right">First name:</td>
        <td>${user.firstName}</td>
    </tr>
    <tr>
        <td align="right">Last name:</td>
        <td>${user.lastName}</td>
    </tr>
    <tr>
        <td align="right">Email address:</td>
        <td>${user.emailAddress}</td>
    </tr>
</table>

<p>
    Для ввода друого адреса email , нажмите на кнопку Back <br> в
    вашем браузере или кнопку Return показанную ниже.<br>
<form action="join_email_list.jsp" method="post">
    <input type="submit" value="Return">
</form>
<br> Чтобы увидеть список зарегистрированных пользователей нажмите
на кнопку Registred List ниже.
</p>
<form action="email_list.jsp" method="post">
    <input type="submit" value="Registred List">
</form>
</body>
</html>
