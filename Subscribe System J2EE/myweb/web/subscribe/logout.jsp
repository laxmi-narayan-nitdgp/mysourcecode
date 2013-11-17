<%-- 
    Document   : logout
    Created on : 5 Jul, 2013, 3:05:22 PM
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
       session.invalidate();
       response.sendRedirect("/myweb/register/reg.jsp");
        %>
    </body>
</html>
