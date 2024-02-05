<%@page import="c.mycompany.mavenproject1.helper.factoryProvider"%>
<%@page import="c.mycompany.mavenproject1.entities.*" %>
<%@page import="c.mycompany.mavenproject1.dao.CategoryDao" %>
<%@page import="c.mycompany.mavenproject1.*" %>
<%@page import="java.util.*" %>
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
        <div class="container admin">
           
            <div class="container-fluid mt-2" >
                
                <%@include file="common_css_js/message.jsp" %>
            </div>
            
            
            
            
            
            
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
                    <div style="padding: 10px;box-shadow: 2px 4px 4px 2px black" class="card" data-toggle="modal" data-target="#addCategoryModel">
                        <div class="card-body text-center">
                           <div class="container">
                               <img style="max-width: 150px; padding: 5px" class="img-fluid" src="images/add-to-basket.png" alt="user_image">
                            </div>
                           
                            <h1> Add category</h1>
                        </div>       
                    </div>
                </div>
                <div class="col-6">
                    <div style="padding: 10px;box-shadow: 2px 4px 4px 2px black" class="card" data-toggle="modal" data-target="#addProductModel">
                        <div class="card-body text-center">
                           <div class="container">
                               <img style="max-width: 150px; padding: 5px" class="img-fluid" src="images/apps.png" alt="user_image">
                            </div>
                            <h1>Add Product</h1>
                        </div>       
                    </div>
                </div>
            </div>  
            
            
            
        </div>


<!-- Modal -->
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="addProductModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
           <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Title</label>
    <input type="text" name="pTitle" placeholder="Enter title" class="form-control" id="exampleInputTitle" aria-describedby="emailHelp">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Title description</label>
    <textarea class="container" placeholder="Enter description" name="pDescription" rows="5" cols="2"> 
    </textarea>
  </div>
               
               <div class="form-group">
    <label for="exampleInputEmail1">Price</label>
    <input type="number" placeholder="Enter price" class="form-control" name="pPrice" id="exampleInputTitle" aria-describedby="emailHelp">
  </div>
               <div class="form-group">
    <label for="exampleInputEmail1">Discount</label>
    <input type="number" placeholder="Enter Discount" class="form-control" name="pDiscount" id="exampleInputTitle" aria-describedby="emailHelp">
  </div>
               <div class="form-group">
    <label for="exampleInputEmail1">Quantity</label>
    <input type="number" class="form-control" id="exampleInputTitle" name="PQuantity" placeholder="Enter Quantty" aria-describedby="emailHelp">
  </div>
               
               <%
                   CategoryDao ct = new CategoryDao(factoryProvider.getFactory());
                   List<Mycategory> list = ct.getCategories();
               %>
                <div class="form-group">
                    <select name="catId" class="form-control" id="id">
                        <%
                        for(Mycategory cc : list){
                       %> 

                       <option value="<%=cc.getcId()%>"><%=cc.getcTitle()%></option>  


            <%
                }
                        %>
                          
                    </select>

               <div class="form-group">
    <label for="exampleInputEmail1">photo</label>
    <input type="file" name="pPhoto" class="form-control" id="exampleInputTitle" aria-describedby="emailHelp">
  </div>
                 </div>
               
         
  <button type="submit" class="btn btn-primary">Submit</button>
   <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</form>
                </div>
      
    </div>
  </div>
</div>

   <!--add category model-->
   <div class="modal fade" id="addCategoryModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="addCategoryServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Title</label>
    <input type="text" name="ctitle" class="form-control" id="exampleInputTitle" aria-describedby="emailHelp">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Title description</label>
    <textarea class="container" name="cdescription" rows="10" cols="5"> 
    </textarea>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
   <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</form>

      </div>
      
    </div>
  </div>
</div>
    </body>
</html>
