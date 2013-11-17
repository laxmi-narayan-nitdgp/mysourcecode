/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package loginpck;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 *
 * @author hiddenprivacy
 */
public class login_servlet extends HttpServlet {

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

        String u = request.getParameter("etxt");
        String p = request.getParameter("ptxt");

        Connection cnn;
        ResultSet rs;
        rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hunt_reg", "root", "root");
            String sql = "select * from hunt_reg.registration WHERE (email=?)&&(passwrd=?);";
            PreparedStatement pst = cnn.prepareStatement(sql);
            pst.setString(1, u);
            pst.setString(2, p);
            rs = pst.executeQuery();
            if (rs.next()) {
                out.println(" hello Login SucessFull");
                HttpSession session = request.getSession(false);
                session.setAttribute("username",u);
               // String mlevel = "0";
               // mlevel = rs.getString(8);
           //     int  count;
            //session.setAttribute("count",0);
            //count++;
            //HttpSessionEvent se;
            //se.getSession().getAttribute("count");
            
                response.sendRedirect("/MystryHunt/question/home.jsp");
                
            } else {
                out.println("<h1>Invalid Login..</h1>");
                String reg="Login Here";
               out.println("<a href='/MystryHunt/verifyemail.jsp'>"+reg);
               //response.sendRedirect("http://localhost:8080/Mystry_Hunt/regstration.jsp")
            }

        } catch (Exception e) {
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
