<%@ page import="ifmo.ru.business.User" %>
<%@ page import="ifmo.ru.business.UserIO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 17:28
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
<jsp:useBean id="user" scope="session" class="ifmo.ru.business.User" />
<table border="1" cellpadding="5">
    <tr>
        <th>Number</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email Address</th>
    </tr>
    <%
        ServletContext sc = this.getServletConfig().getServletContext();
        String path = sc.getRealPath("/WEB-INF/EmailList.txt");
        ArrayList<User> users = UserIO.getUsers(path);
        session.setAttribute("users", users);
        session.setAttribute("itogo", users.size());
    %>
    <% int i=0; for (User usr : users)
    {  %>
    <tr valign="top">
        <td><%= i+1 %></td>
        <td><%=usr.getFirstName()%></td>
        <td><%=usr.getLastName()%></td>
        <td><%=usr.getEmailAddress()%></td>

    </tr>
    <% i=i+1;} %>


    <td>Sum</td>
    <td><%= session.getAttribute("itogo")%></td><td></td><td></td>
</table>
<form action="join_email_list.jsp">
    <input type="submit" value="Return to register">
</form>


</body>
</html>
