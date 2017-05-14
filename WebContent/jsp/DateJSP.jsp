<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Time jsp</title>
</head>
<body>
<%--Это содержимое JSP, которое выводит серверное время, используя класс Calendar пакета java.util--%>
<%
    java.util.Date dateTime =new java.util.Date();
    int hour = dateTime.getHours();
    int minute = dateTime.getMinutes();
    int second = dateTime.getSeconds();
%>

<H1>Этот код JSP для показа серверного времени</H1>
<H2>Текущее время: </H2>
<H2>
    <%=hour%>:<%=minute%>:<%=second%>
</H2>
</body>
</html>
