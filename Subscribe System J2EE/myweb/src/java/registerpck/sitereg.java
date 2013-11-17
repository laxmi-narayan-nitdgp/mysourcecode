/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package registerpck;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kode-crypt
 */
public class sitereg extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection cnn;
        PreparedStatement pstat;
        try {
                      
           String fname = request.getParameter("firstname").toString().trim();
            
            String lname = request.getParameter("lastname").toString().trim();
            String em = request.getParameter("email").toString().trim();
            String pass = request.getParameter("password").toString().trim();
            out.println(fname+" \t" +"lname"+"\t"+em+"\t"+pass+"\t"+"\n");
          Class.forName("com.mysql.jdbc.Driver");
          
         cnn=   DriverManager.getConnection("jdbc:mysql://localhost:3306/myweb","root","root");
         
          String  Sql="insert into myweb.register values(?,?,?,?,?)";
          pstat = cnn.prepareStatement(Sql);
            pstat.setString(1, fname);
            pstat.setString(2, lname);
           pstat.setString(3, em);
           pstat.setString(4,pass );
           pstat.setString(5,"1" );
            pstat.execute();
    }catch(ClassNotFoundException | SQLException e){
       out.println(e.toString());
        
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
