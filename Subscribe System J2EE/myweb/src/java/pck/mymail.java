/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pck;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;
import java.util.StringTokenizer;
import java.util.UUID;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kode-crypt
 */
public class mymail extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String fname = request.getParameter("firstname").toString().trim();
            String lname = request.getParameter("lastname").toString().trim();
            String str = request.getParameter("email").toLowerCase().toString().trim();
            String pass = request.getParameter("password").toString().trim();
            final String username = "tsx2.nethunt@gmail.com";
            final String password = "62652017";

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
           //     int min = 1000;
             //   int max = 100000;
               // Random random = new Random();
                //long range = (long) max - (long) min + 1;
                //long fraction = (long) (range * random.nextDouble());
                //int randomNumber = (int) (fraction + min);
                //String code = String.valueOf(randomNumber);
               // code = "cad" + code;
                String uuid = UUID.randomUUID().toString();
       StringTokenizer stk = new StringTokenizer(uuid, "-");
      String code = stk.nextToken();


                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress(username));
                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(str));
                message.setSubject("AUTHENTICATION CODE");
                message.setText("Dear USER .... Ur Code is "
                        + "\n\n " + code);

                Transport.send(message);
                //out.println("code is "+code);                   
                out.println("<FORM ACTION=" + "\"/myweb/register/everify/njsp.jsp\" METHOD=\"POST\">");
                //out.println("<input type='text' name='b1' value='lexi'>");
                // out.println("<input type=\"hidden \" name=\"loginId1 value="+code+ "style=\"display: none\">");
                //        out.println("<input type=\"hidden \" name=loginId1 value="+code+"style=\"display: none\">");
                out.println("<input type='hidden' name='loginId' value=" + code + ">");
                out.println("<input type='hidden' name='loginEmail' value=" + str + ">");
                out.println("<input type='hidden' name='fname' value=" + fname + ">");
                out.println("<input type='hidden' name='lname' value=" + lname + ">");
                out.println("<input type='hidden' name='pass' value=" + pass + ">");
                out.println("<INPUT TYPE=\"submit\" VALUE=" + "\"Click Here TO Cont.\">");

                out.println("</form>");

            } catch (MessagingException e) {
                out.println(" Error Encountered  " + e.toString() + " try again");

            }
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
