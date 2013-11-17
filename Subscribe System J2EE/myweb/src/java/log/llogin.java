/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package log;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kode-crypt
 */
public class llogin extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String em;
        Connection cnn;
        PreparedStatement pst;
        ResultSet rs ;
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //String emailId=null;
        try{
            
          em = request.getParameter("email");
            String pass = request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");

            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myweb", "root", "root");
        
            String str = "select * from myweb.register WHERE (email=?)&&(pass=?); ";
            pst = cnn.prepareStatement(str);
            pst.setString(1, em);
            pst.setString(2, pass);
            rs = pst.executeQuery();
            if (rs.next()) {
                HttpSession session = request.getSession(false);
                session.setAttribute("username",em);
                
            if(em.equals("mywebcode1@gmail.com")){
                    response.sendRedirect("/myweb/subscribe/mysub.jsp");
            }  
             //out.println(session.getAttribute("username"));
            else{
             
                response.sendRedirect("/myweb/subscribe/chksubs.jsp");
            }
            }
             else {
                out.println("login unsucessfull");
                out.println("<a htref='/myweb/register/reg.jsp'>Register here plz </a>");
            }

}catch( ClassNotFoundException | SQLException e ){
            out.println("error in access"+e.toString());
        }

        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
