/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Everify;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hiddenprivacy
 */
public class chck extends HttpServlet {

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
        PrintWriter out = response.getWriter();String sstr3=null;
        String sstr4=null;
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
                   
            
        //    HttpSession session = request.getAttribute(false);
          //  session.setAttribute("username", "");
           
          String sst3 =request.getParameter("itxt").toString();
          String sst4 =request.getParameter("itxt1").toString();
          out.println("Str 3 is "+sst3);            
          out.println("Str 4 is "+sst4);            
          String semailId =request.getParameter("itxtmail").toString();
          out.println(semailId);
     out.println("<input type='hidden' name='loginId' value="+semailId+">");  
 if(sst3.equals(sst4)){
         
    RequestDispatcher rs = request.getRequestDispatcher("/regstration.jsp");    
    String vall =request.getParameter("itxtmail").toString();
    rs.forward(request, response);
 }
            
 else{
 response.sendRedirect("MystryHunt/regstration.jsp");
 }
            
           
          
           //if(str3.equals(str4)){
             //  response.sendRedirect("http://localhost:8080/test_email/index.jsp");
           //}
           
          
        } finally {            
            out.close();
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
