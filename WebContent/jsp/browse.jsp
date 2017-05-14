<%--
  Created by IntelliJ IDEA.
  User: chip0llino
  Date: 14.05.17
  Time: 2:56
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.Map"%>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h2>Product List</h2>
<a href="<%=response.encodeURL("/lab4/shop?action=viewCart")%>">View Cart</a>
<br/>
<br/>
<%
    @SuppressWarnings("unchecked")
    Map<Integer, String> products = (Map<Integer, String>) request
            .getAttribute("products");

    for (int id : products.keySet()) {
        String productId = Integer.toString(id);
        String cartURL = "/lab4/shop?action=addToCart&productId="
                + productId;
%>
<a href="<%=response.encodeURL(cartURL)%>"><%=products.get(id)%></a>
<br />
<%
    }
%>
</body>
</html>
