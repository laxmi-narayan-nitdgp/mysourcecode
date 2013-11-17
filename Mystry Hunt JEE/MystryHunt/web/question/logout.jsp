<%-- 
    Document   : logout
    Created on : Aug 1, 2012, 8:00:06 AM
    Author     : hiddenprivacy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="page.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
       <%
       session.invalidate();
       response.sendRedirect("/MystryHunt/verifyemail.jsp");
        %>
    </body>
</html>
