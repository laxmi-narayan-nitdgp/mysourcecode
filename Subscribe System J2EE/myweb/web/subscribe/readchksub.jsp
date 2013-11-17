<%-- 
    Document   : readchksub
    Created on : 5 Jul, 2013, 7:54:21 AM
    Author     : kode-crypt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String st = request.getParameter("b1");
            //String st1 = request.getParameter("subscribe");
            out.println("<hr/><br/>");
            out.println("this is fine"+st);
            out.println("<hr/><br/>");
            
        %>
    </body>
</html>
