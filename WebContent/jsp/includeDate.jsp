<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Include DateJSP</title>
</head>
<body>
<%-- Использование действия <jsp: include> --%>
<%java.util.Date day=new java.util.Date();
    int d=day.getDate();
    int m=1+day.getMonth();
    int g=1900+day.getYear();
    String  z = day.toGMTString();%>
<h1>Сегодня  <%= d %>/<%= m %>/<%= g %> Greenwich Mean Time: <%= z %></h1>
<%--<% out.println("<h3>DatePage.jsp показан ниже из другой JSP страницы</h3>");%>--%>
<h2> Время из другого JSP: <jsp:include page="DateJSP.jsp" flush="true"/></h2>

</body>
</html>

