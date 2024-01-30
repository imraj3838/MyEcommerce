<%-- 
    Document   : index
    Created on : 29 Jan, 2024, 11:43:29 PM
    Author     : rajpr
--%>
<%@page import="c.mycompany.mavenproject1.helper.factoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="common_css_js/commonfile.jsp" %>
        <title>Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>i am priyanshu raj</h1>
        <%
        out.print(factoryProvider.getFactory()+"<br>");
        out.print(factoryProvider.getFactory()+"<br>");
        out.print(factoryProvider.getFactory());
        
        %>
    </body>
</html>
