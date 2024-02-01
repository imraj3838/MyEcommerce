/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package c.mycompany.mavenproject1.server;

import c.mycompany.mavenproject1.entities.User;
import c.mycompany.mavenproject1.helper.factoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;


@WebServlet(name = "registerservlett", urlPatterns = {"/registerservlett"})
public class registerservlett extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try{
            String UserName = request.getParameter("user_name");
            String UserEmail = request.getParameter("user_email");
            String UserPassword = request.getParameter("user_password");
            String UserPhone = request.getParameter("user_phone");
            String UserAddress = request.getParameter("user_address");
            
            if(UserName.isEmpty()){
                out.print("<h1>Please Enter your name</h1>");
            }
            
            User user = new User(UserName, UserEmail, UserPassword, UserPhone, "default.png", UserAddress);
            
            Session hibernateSession = factoryProvider.getFactory().openSession();
            
            Transaction tx = hibernateSession.beginTransaction();
            int userId = (int)hibernateSession.save(user);
            
            
            tx.commit();
            hibernateSession.close();
            
//            out.print("successfully saved data");
//            out.print("<br>user id is"+userId);
HttpSession httpsession = request.getSession();
httpsession.setAttribute("message", "Registration successful "+userId);
response.sendRedirect("register.jsp");
return;

         } catch(Exception e) {
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
