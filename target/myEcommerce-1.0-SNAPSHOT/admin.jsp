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
        <link rel="stylesheet" href="css/newcss.css">
        
    </head>
    <body>
        <%@include file="common_css_js/navbar.jsp" %>
        <div class="container admin">
            <div class="row mt-4 ">
                <div class="col-4 "> 
                    <div style="background-color: #C4A484;color: white" class="card text-center">
                        <div class="card-body">
                            <div class="container">
                                <img style="max-width: 150px;padding: 5px" class="img-fluid" src="images/team.png" alt="user_image">
                            </div>
                            <h2>2324</h2>
                            <h1>User</h1>
                        </div>       
                    </div>
                </div>
                <div class="col-4">
                    <div style="background-color:#C4A484;color: white" class="card text-center">
                        <div class="card-body">
                           <div class="container">
                               <img  style="max-width: 150px;padding: 5px" class="img-fluid" src="images/options.png" alt="user_image">
                            </div>
                            <h2>2324</h2>
                            <h1>Category</h1>
                        </div>       
                    </div>
                </div>
                <div class="col-4"> 
                    <div style="background-color: #C4A484;color: white" class="card text-center">
                        <div class="card-body">
                           <div class="container">
                               <img style="max-width: 150px; padding: 5px" class="img-fluid" src="images/products.png" alt="user_image">
                            </div>
                            <h2>2324</h2>
                            <h1>Products</h1>
                        </div>       
                    </div>
                </div>
            </div>  
            <div class="row mt-2">
                <div class="col-6"> 
                    <div style="padding: 10px;box-shadow: 2px 4px 4px 2px black" class="card">
                        <div class="card-body text-center">
                           <div class="container">
                               <img style="max-width: 150px; padding: 5px" class="img-fluid" src="images/add-to-basket.png" alt="user_image">
                            </div>
                           
                            <h1> Add Products</h1>
                        </div>       
                    </div>
                </div>
                <div class="col-6">
                    <div style="padding: 10px;box-shadow: 2px 4px 4px 2px black" class="card">
                        <div class="card-body text-center">
                           <div class="container">
                               <img style="max-width: 150px; padding: 5px" class="img-fluid" src="images/apps.png" alt="user_image">
                            </div>
                            <h1>Add Category</h1>
                        </div>       
                    </div>
                </div>
            </div>  
            
            
            
        </div>
    </body>
</html>
