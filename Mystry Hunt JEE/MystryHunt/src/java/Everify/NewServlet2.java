/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Everify;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hiddenprivacy
 */
public class NewServlet2 extends HttpServlet {

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
        try {
           // String str ="mkpanchal1@gmail.com";
           // String str ="ank.gauri@gmail.com";
         //   String str = "smartbagesh@gmail.com";
           // String str = "naba.rimpi@gmail.com";
            String str  =request.getParameter("t11").toLowerCase().toString();
           final String username = "nitdgp.673@gmail.com";
		final String password = "7696171803";
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
                    int min = 1000;
    int max = 100000;
    Random random = new Random();
     long range = (long)max - (long)min + 1;
    long fraction = (long)(range * random.nextDouble());
    int randomNumber =  (int)(fraction + min);    
    String code = String.valueOf(randomNumber);
    code="cad"+code;
    
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("nitdgp.673@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(str));
			message.setSubject("AUTHENTICATION CODE");
			message.setText("Dear USER ..,"
				+ "\n\n "+code);
 
			Transport.send(message);
            out.println("code is "+code);                   
            out.println("<FORM ACTION=" +  "\"/MystryHunt/njsp.jsp\" METHOD=\"POST\">");
            //out.println("<input type='text' name='b1' value='lexi'>");
             // out.println("<input type=\"hidden \" name=\"loginId1 value="+code+ "style=\"display: none\">");
               //        out.println("<input type=\"hidden \" name=loginId1 value="+code+"style=\"display: none\">");
                       out.println("<input type='hidden' name='loginId' value="+code+">");  
                       out.println("<input type='hidden' name='loginEmail' value="+str+">");  
           out.println("<INPUT TYPE=\"submit\" VALUE=" +"\"Click Here TO Cont.\">");
           
        out.println("</form>");
 
		} catch (MessagingException e) {
			out.println(" Error Encountered  "+e.toString()+" try again");
                        
		}
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