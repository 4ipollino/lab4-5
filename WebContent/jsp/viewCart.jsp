<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.Map" %>
<html>
<head>
    <title>View Cart</title>
</head>
<body>
<h2>View Cart</h2>
<a href="<%=response.encodeURL ("/lab4/shop") %>">Product List</a> <br /><br />
<a href="<%=response.encodeURL ("/lab4/shop?action=emptyCart") %>">Empty Cart</a> <br /><br />
<%
    @SuppressWarnings("unchecked")
    Map<Integer, String> products =
            (Map<Integer, String>)request.getAttribute("products");
    @SuppressWarnings("unchecked")
    Map<Integer, Integer> cart =
            (Map<Integer, Integer>)session.getAttribute("cart");

    if(cart == null || cart.size() == 0)
        out.println("Your cart is empty.");
    else
    {
        for(int id : cart.keySet())
        {
            out.println(products.get(id) + " (qty: " + cart.get(id) +
                    ")<br />");
        }
    }
%>
</body>
</html>
