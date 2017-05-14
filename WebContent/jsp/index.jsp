<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="ifmo.ru.data.Employee"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Поиск сотрудников</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/EmployeesServlet">
    Фамилия сотрудника <input type="text" name="lastname"> <input
        type=submit value="поиск">
</form>
<%
    // Получение значения параметра employeesFound
    ArrayList<Employee> employees = (ArrayList<Employee>) request.getAttribute("employeesFound");
    // Если параметр задан, начинаем обработку
    if (employees != null) {
        // Если не найдено ни одного сотрудника - вывод сообщения
        if (employees.size() == 0)
            out.print("Сотрудники не найдены");
        else {
            out.print("<TABLE border=\"1\">");
            // Заголовок таблицы
            out.print("<TR><TD>Id</TD><TD>Имя</TD><TD>Фамилия</TD>"
                    + "<TD>Должность</TD><TD>Телефон</TD></TR>");
            for (int i = 0; i < employees.size(); i++) {
                // По каждому найденному сотруднику
                // формируется строка таблицы
                out.print("<TR>");
                // Получение очередного сотрудника из коллекции
                Employee emp = employees.get(i);
                // Заполнение строки таблицы свойствами сотрудника
                out.print("<TD>" + emp.getId() + "</TD>");
                out.print("<TD>" + emp.getFirstName() + "</TD>");
                out.print("<TD>" + emp.getLastName() + "</TD>");
                out.print("<TD>" + emp.getDesignation() + "</TD>");
                out.print("<TD>" + emp.getPhone() + "</TD>");
                out.print("</TR>");
            }
            out.print("</TABLE>");
        }
    }
%>
</body>
</html>
