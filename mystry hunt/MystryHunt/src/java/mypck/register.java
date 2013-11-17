/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mypck;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hiddenprivacy
 */
public class register extends HttpServlet {
 String count;
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
         //String count;
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection cnn=null;
        PreparedStatement pst;
        
        String level = "0";
        
        String score ="0";
        
        String dt ="1/1/2011";
                
        String fnme =request.getParameter("fname");
        out.println(fnme+"<br>");        
        String mnnme = request.getParameter("mname");
        out.println(mnnme+"<br>");
        String lnme = request.getParameter("lname");        
        out.println(lnme+"<br>");
        String eiid = request.getParameter("eidd");
        out.println(eiid+"<br>");
        String ppass = request.getParameter("pass");
        out.println(ppass+"<br>");
        String sexx = request.getParameter("sex");
        out.println(sexx+"<br>");
        String bday = request.getParameter("birthday_day");
        out.println(bday+"<br>");
        String bmnth = request.getParameter("birthday_month");
        out.println(bmnth+"<br>");
        String byear = request.getParameter("birthday_year") ;
        out.println(byear+"<br>");
        String brdy = bday+"/"+bmnth+"/"+byear;
        out.println("<br>"+"birthday"+brdy);
        
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hunt_reg", "root", "root");            
            String sql ="INSERT INTO hunt_reg.registration Values(?,?,?,?,?,?,?,?,?,?);";            
            pst =cnn.prepareStatement(sql);              
            pst.setString(1, fnme);
            pst.setString(2, mnnme);
            pst.setString(3, lnme);            
            pst.setString(4, eiid);
            pst.setString(5, ppass);
            pst.setString(6, sexx);
            pst.setString(7, brdy);
            pst.setString(8, level);
            pst.setString(9, score);
            pst.setString(10, dt);
            
               pst.execute();
               out.println("The Statement is Executed Sucessfully");
                HttpSession session = request.getSession(false);
                session.setAttribute("username",eiid); 
                session.setAttribute("count", "0");
                session.setAttribute("prvcount", "-1");
                
            //out.println("<input type='text' name='b1' value='lexi'>");
            
          
            response.sendRedirect("/MystryHunt/question/home.jsp");
  
                //mlevel = rs.getString(8);
               
                 //session.setAttribute("count","0");
                
                
                
        } 
        catch(Exception e){
            out.println(e.toString());
            //response.sendRedirect("/MystryHunt/bcktolog.jsp");
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
