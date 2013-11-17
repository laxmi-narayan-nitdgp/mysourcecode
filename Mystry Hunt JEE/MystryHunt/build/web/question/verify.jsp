<%-- 
    Document   : verify
    Created on : Sep 24, 2012, 5:39:01 AM
    Author     : hiddenprivacy

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello verify World!</h1>
        <%
        
        String em = session.getAttribute("username").toString();
out.println(em); 
        %>
        
        
        <form name="f1" method="post" action="/MystryHunt/NewServlet2">
            <input type="text" name="tt1" value="<%=em%>">
        <input type='hidden' name="tt2" value="<%=em%>">
        <input type="submit" name="b1" value="Send Mail to verify">            
            
            </form>
        <form>
            
            </form>
        
    </body>
</html>
