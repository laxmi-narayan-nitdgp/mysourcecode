/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sendsubsribtionmail;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Properties;
import javax.mail.Message;

/**
 *
 * @author kode-crypt
 */
public class srv extends HttpServlet {

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
  
            
            out.println("hello coder");
            
            
            
               Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.stmp.user", "abc@gmail.com");          
        //If you want you use TLS 
        props.put("mail.smtp.auth", "true");
out.println("hello coder1");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.password", "password");
        // If you want to use SSL
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                   "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        out.println("hello coder333");
        Session session = Session.getInstance(props, new Authenticator() {
            
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                out.println("hello coder5555555555");
                String username = "tsx2.nethunt@gmail.com";
                String password = "62652017";
                return new PasswordAuthentication(username,password); 
            }
        });
        String[] to = {"vbkr889@gmail.com","neha.singh@yahoo.in","nitdgp.673@gmail.com","fbacc89@gmail.com"};
        for(String s : to){
            out.print(s);
        }
        String from = "nitdgp.673@gmail.com";
        String subject = "Testing...";
        MimeMessage msg = new MimeMessage(session);
        try {
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] addressTo = new InternetAddress[to.length];
            for (int i = 0; i < to.length; i++)
            {
                addressTo[i] = new InternetAddress(to[i]);
                out.println(addressTo[i]);
                out.println("<br>");
            }
            msg.addRecipients(Message.RecipientType.BCC, addressTo);
            //msg.setRecipients(RecipientType.TO, addressTo); 
            // msg.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(to));
            msg.setSubject(subject);
            // msg.setText("JAVA is the BEST");

            // Create the message part 
            BodyPart messageBodyPart = new MimeBodyPart();

            // Fill the message
            messageBodyPart.setText("This is message body");

            // Create a multipar message
            Multipart multipart = new MimeMultipart();

            // Set text message part
            multipart.addBodyPart(messageBodyPart);

            // Part two is attachment
            //messageBodyPart = new MimeBodyPart();
            //String filename = "";
       //     DataSource source = new FileDataSource(filename);
         //   messageBodyPart.setDataHandler(new DataHandler(source));
           // messageBodyPart.setFileName(filename);
            //multipart.addBodyPart(messageBodyPart);

            // Send the complete message parts
            msg.setContent(multipart );

            Transport transport = session.getTransport("smtp");
            transport.send(msg);
            System.out.println("E-mail sent !");
        }
        catch(Exception exc) {
            System.out.println(exc);
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
