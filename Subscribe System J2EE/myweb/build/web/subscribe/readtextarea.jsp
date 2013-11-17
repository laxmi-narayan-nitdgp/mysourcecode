<%-- 
    Document   : readtextarea
    Created on : 3 Jul, 2013, 12:15:47 PM
    Author     : kode-crypt
--%>

<%@page import="javax.mail.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.Transport;
import java.util.Properties; " %>
<%@page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
     //      String str = request.getParameter("txt11").trim();
       //    out.println(str);
       %>
       
       
       <%
       
           
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.stmp.user", "abc@gmail.com");          
        //If you want you use TLS 
        props.put("mail.smtp.auth", "true");

        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.password", "password");
        // If you want to use SSL
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                   "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        Session session1 = Session.getDefaultInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                String username = "tsx2.nethunt@gmail.com";
                String password = "62652017";
                return new PasswordAuthentication(username,password); 
            }
        });
        String[] to = {"vbkr889@gmail.com","neha.singh@yahoo.in","nitdgp.673@gmail.com","fbacc89@gmail.com"};
        String from = "nitdgp.673@gmail.com";
        String subject = "Testing...";
        MimeMessage msg = new MimeMessage(session1);
        try {
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] addressTo = new InternetAddress[to.length];
            for (int i = 0; i < to.length; i++)
            {
                addressTo[i] = new InternetAddress(to[i]);
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

            Transport transport = session1.getTransport("smtp");
            transport.send(msg);
            System.out.println("E-mail sent !");
        }
        catch(Exception exc) {
            System.out.println(exc);
        }
       
       
       
       
       
       
       %>
       
       
        
    </body>
</html>
