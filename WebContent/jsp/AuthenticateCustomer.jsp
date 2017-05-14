<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 3:23
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
<%-- Задание имени страницы ошибок --%>
<%@ page errorPage="LoginErrorPage.jsp" %>
<font face="verdana"> <%
    /* Получение значения текстового поля uname */
    String customerID = (String)request.getParameter("uname");
 	/* Получение значения текстового поля password b пПреобразование строкового значения в целое значение */
    int pass = Integer.parseInt(request.getParameter("password"));
 	 	/* Проверка ID и пароля клиента */
    if (pass == 1010 && customerID.equals("Customer")) // Такой Login/Password должен вводиться
    {
        out.println("Welcome to Online Banking System");
%> <br> <br> <%
        out.println("Login Successful");
    } else {
        out.println("Login Unsuccessful");
    }
%>
</font>
</body>
</html>