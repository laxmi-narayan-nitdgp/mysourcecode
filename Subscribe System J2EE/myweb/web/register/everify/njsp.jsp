<%-- 
    Document   : njsp
    Created on : 28 Jun, 2013, 1:35:04 PM
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
        String xcode = request.getParameter("loginId").toString().trim();
                 
               String email = request.getParameter("loginEmail").toString().trim();
          String fname = request.getParameter("fname").toString().trim();
          String lname = request.getParameter("lname").toString().trim();
          String pass = request.getParameter("pass").toString().trim();
        out.println("The value is "+xcode);
        out.println("The value is "+fname);
        out.println("The value is "+lname);
        out.println("The value is "+email);
        out.println("The value is "+pass);
       %>
       
       
        <form name="fff" method="post" action="/myweb/codechck">
      <center> 
            <input type="text" name="itxt" value="" required id="xbt"/>
            <input type="submit" name="b2" value="Click Me Here"/>
            
      </center>
            <input type="hidden" name="itxt1" value=<%=xcode%>>
           <input type="hidden" name="fname" value=<%=fname%>>
           <input type="hidden" name="lname" value=<%=lname%>>
           <input type="hidden" name="email" value=<%=email%>>
           <input type="hidden" name="pass" value=<%=pass%>>
            
        
                    </form>
       
       
       <h1>hello world </h1>
    </body>
</html>
