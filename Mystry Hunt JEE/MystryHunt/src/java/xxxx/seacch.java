/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package xxxx;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hiddenprivacy
 */
public class seacch extends HttpServlet {

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
           HttpSession sessionw = request.getSession();
          String str="nitdgp.673@gmail.com";
       //   String suname =sessionw.getAttribute("username").toString();
         // if(suname.equals(str.toString())){
             
         // }
          //else{
            //  response.sendRedirect("/MystryHunt/regstration.jsp");
          //}
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       Connection con;
    ResultSet rs;
    java.sql.Statement st;
    //java.sql.PreparedStatement pst;
    //Statement stmtq;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hunt_reg", "root", "root");
             st =con.createStatement();
             rs = st.executeQuery("select * from registration ORDER by level");
             out.println("<table border=1 width=50% height=50%>");
             out.println("<tr><th>Fname</th><th>Mname</th><th>Lname</th><th>E-mail</th><th>Password</th><th>Level</th><th>date_time</th><tr>");
             while (rs.next()) {
                 String n = rs.getString("fname");
                 String nm = rs.getString("mname");
                 String ln = rs.getString("lname");
                 String em = rs.getString("email");
                String pss = rs.getString("passwrd");
                 String lev = rs.getString("level");
                 String dd = rs.getString("date_time");
                 //int s = rs.getInt("sal"); 
                 out.println("<tr><td>" + n + "</td><td>" + nm + "</td><td>" + ln + "</td>"
                         + "<td>" + em + "</td><td>" + pss + "</td><td>" + lev + "</td><td>" + dd + "</td></tr>"); 
             }
             out.println("</table>");
             out.println("</html></body>");
             con.close();
            }
             catch (Exception e) {
             out.println("error #"+e.toString());
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
