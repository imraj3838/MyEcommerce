

<%@page import="c.mycompany.mavenproject1.entities.User"%>
<%
    User user1 = (User)session.getAttribute("current-user");
%>


<nav class="bg-primary" data-bs-theme="dark">
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">My Ecommerce</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div  class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active"  href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Category</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
        <ul  class="navbar-nav  mb-2 mr-2 mb-lg-0">
      <%
        if(user1==null){
           %> 
            <li class="nav-item">
          <a class="nav-link active"  href="login.jsp">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active"  href="register.jsp">Register</a>
        </li>
            
            
         <%   
        }else{
        %>
     <li class="nav-item">
         <a class="nav-link active"  href="#"><h4 style="margin-right: 10px;color: yellow;font-family: sans-serif"> <%=  user1.getUserName()   %></h4></a>
        </li>
         <li class="nav-item">
         <a class="nav-link active"  href="logoutservlett"><h4>Logout</h4></a>
        </li>
      
        <%
}  
          
          
          %>
            
            
           
        </ul>
      
    </div>
  </div>
</nav>
  </nav>