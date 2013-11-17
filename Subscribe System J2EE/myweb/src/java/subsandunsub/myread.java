/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package subsandunsub;

import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kode-crypt
 */
public class myread extends HttpServlet {

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
        String xval="0";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        ResultSet rs;
         
        try {
            /* TODO output your page here. You may use following sample code. */
            //String email = "nitdgp.673@gmail.com";
            String email = request.getParameter("hid").toString().trim();
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","root");
     
            
              String sql1 = "select * from myweb.register where email='" + email + "';";
            Statement st = cnn.createStatement();
            rs = st.executeQuery(sql1);
            while (rs.next()) {
                xval = rs.getString(5);
                out.println(xval);
            }
            
            
            if(xval.equals("1")){
                xval="0";
                out.println(xval+"<br/><hr/>");
            }
            else{
             
                if(xval.equals("0")){
                xval="1";
                out.println(xval+"<br/><hr/>");
            }
                
            }
            
            
     String sql ="UPDATE myweb.register SET substatus='"+xval+"' WHERE email='"+email+"';" ;         
          PreparedStatement pst = cnn.prepareCall(sql);
            Statement stat = cnn.createStatement();
           stat.execute(sql);
           out.println(" you are process Executed !!! ");
               out.println("<br/><hr/>"); 
            out.println(" <a href='/myweb/index.jsp'> Click here to continue </a> ");
        } catch(Exception e){
            out.println("the value is "+ e.toString());
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
