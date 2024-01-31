<%-- 
    Document   : register.jsp
    Created on : 31 Jan, 2024, 1:15:24 PM
    Author     : rajpr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <%@include file="common_css_js/commonfile.jsp" %>
    </head>
    <body>
        <%@include file="common_css_js/navbar.jsp" %>
        
        <div class="row">
            <div class="card-body">
                <i class="fa-solid fa-user-plus"></i>
                
            <h2 class = "text-center my-3">Sign Up here</h2>
            <div class="col-md-4 offset-md-4">
                 <form action="registerservlett" method="post">
  <div class="mb-3">
     
    <label for="exampleInputName" class="form-label">Full Name</label>
    <input type="text" name="user_name" class="form-control" id="Name" placeholder="Enter name here" aria-describedby="nameHelp">
  </div>
                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name="user_email" class="form-control" id="Email" placeholder="Enter email here" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="user_password" class="form-control" placeholder="Enter Password here" id="Password1">
  </div>
                <div class="mb-3">
    <label for="exampleInputPhone" class="form-label">Phone Number</label>
    <input type="number" name="user_phone" class="form-control" id="Phone" aria-describedby="phoneHelp">
    <div id="emailHelp" class="form-text">We'll never share your phone with anyone else.</div>
  </div>
                <div class="mb-3">
    <label for="exampleInputAddress" class="form-label">Full Address</label><br>
    <textarea id="address" name="user_address" cols="60" rows="8" placeholder="enter address"></textarea>
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>
  <!--<button type="reset" class="btn btn-primary">Reset</button>-->
   </form>
            </div>
               
            </div>
        </div>

    </body>
</html>
