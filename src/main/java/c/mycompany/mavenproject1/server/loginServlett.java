/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package c.mycompany.mavenproject1.server;
import c.mycompany.mavenproject1.entities.User;
import c.mycompany.mavenproject1.helper.factoryProvider;
import c.mycompany.mavenproject1.dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rajpr
 */
@WebServlet(name = "loginServlett", urlPatterns = {"/loginServlett"})
public class loginServlett extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           try{
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
             UserDao userDao = new UserDao(factoryProvider.getFactory()); 
             User user = userDao.getUserByEmailAndPassword(email, password); 
              HttpSession httpsession = request.getSession();
             if(user==null){
                 httpsession.setAttribute("message","Invalid User ! Try again");
                 response.sendRedirect("login.jsp");
                 return;
             }else{
                 httpsession.setAttribute("current-user",user);
                 
//                 admin login
if(user.getUserType().equals("admin")){
    response.sendRedirect("admin.jsp");
    return;
}else if(user.getUserType().equals("normal")){
    response.sendRedirect("normal.jsp");
    return;
}else{
    out.print("<h1>not recognise<h1>");
}
             }
             
           }catch( Exception e){
             e.printStackTrace();  
           }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
