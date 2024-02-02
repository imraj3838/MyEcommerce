<%@page import="c.mycompany.mavenproject1.entities.User" %>
<%
    User user = (User)session.getAttribute("current-user");

if(user==null){
    session.setAttribute("message", "Invalid User !! please login first");
    response.sendRedirect("login.jsp");
    return;
}else{
    if(user.getUserType().equals("normal")){
        session.setAttribute("message", "You are not admin ! cannot access");
        response.sendRedirect("login.jsp");
        return;
    }
}


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
        <%@include file="common_css_js/commonfile.jsp" %>
        
    </head>
    <body>
        <%@include file="common_css_js/navbar.jsp" %>
        <h1>This is admin page</h1>
    </body>
</html>
