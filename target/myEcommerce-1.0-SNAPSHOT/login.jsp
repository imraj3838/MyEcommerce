

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="common_css_js/commonfile.jsp" %>
    </head>
    <body style="background-color: yellowgreen">
        <%@include file="common_css_js/navbar.jsp" %>
        <div  class="container">
            <div style="padding-bottom:10px"  class="row mt-3">
                <div class="col-md-4 offset-md-4">
                    <div style="box-shadow: 2px 4px 4px 2px black" class="card">
                        <form action="loginServlett"  method="post">
                        <div class="card-header">
                            <%@include file="common_css_js/message.jsp" %>
                            <h3>Login Please</h3>
                        </div>
                        <div class="card-body">
                              <div class="mb-3 row">
   
    <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
</div>
    
  </div>
  <div class="mb-3 row">
    <label for="inputPassword" class="col-sm-6 col-form-label">Password</label>
    <div class="col-sm-14">
        <input type="password" name="password" class="form-control" id="inputPassword">
    </div>
  </div>
                        </div>
                        <div class="text-center"><a style="text-decoration: none;color: black; margin-bottom: 10px" href="register.jsp"><h4>Not register ? Click Me</h4></a></div>
                        <div class="card-footer" >
                            <h4 style="text-align: center"><button style="border-radius: 5px; border: 2px solid black;" class="submit" type="submit" name="submit" >Submit</button></h4>
                            <h4 style="text-align: center"><button style="border-radius: 5px; border: 2px solid black;" class="reset" name="reset" type="reset" >Reset</button></h4>
                        </div>
                    </form>
                    </div>
                    </div>
                </div>
        </div>
    </body>
</html>
