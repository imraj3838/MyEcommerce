<%
String message =(String) session.getAttribute("message");

if(message!=null){
    %>
    
    <h2 style="font-family: sans-serif;background-color: whitesmoke; text-align: center;box-shadow: 2px 2px 2px 2px black"> <%= message %> </h2>
    
  <%  
}

session.removeAttribute("message");
%>
