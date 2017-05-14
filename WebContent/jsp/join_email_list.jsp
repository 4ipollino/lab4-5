<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and
    email address below. <br>
    Then, click on the Submit button.</p>

<form action="display_email_entry.jsp" method="post">
    <table cellspacing="5" border="0">
        <tr>
            <td align="right">First name:</td>
            <td><input type="text" name="firstName"
                       value="${user.firstName}">
            </td>
        </tr>
        <tr>
            <td align="right">Last name:</td>
            <td><input type="text" name="lastName"
                       value="${user.lastName}">
            </td>
        </tr>
        <tr>
            <td align="right">Email address:</td>
            <td><input type="text" name="emailAddress"
                       value="${user.emailAddress}">
            </td>
        </tr>
        <tr>
            <td></td>
            <td><br><input type="submit" value="Submit"></td>
        </tr>
    </table>

</form>

<form action="email_list.jsp" method="post">
    <input type="submit" value="Registred List">
</form>
</body>
</html>
