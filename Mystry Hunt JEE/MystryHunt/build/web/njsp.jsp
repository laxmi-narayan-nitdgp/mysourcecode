<%-- 
    Document   : njsp
    Created on : Sep 22, 2012, 12:09:17 PM
    Author     : hiddenprivacy
 <input type="text" name="itxt2" value="<%=hval%>" >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="p1.css"/>
        <title>JSP Page</title>
        <style>
            #xbt{
    height: 30px;
    width: 200px;
    border: 5px;
    border-color: #072239;
    border:0;
    border-radius: 5px;
	padding:4px 8px;
	margin-bottom:0px;
}
   @font-face {
    font-family: "My Custom Font";
    src: url(font.otf) format("truetype");
}


#pd { 
    font-family: "My Custom Font";
    letter-spacing:0.1em;
	text-align:center;
	margin: 40px auto;
	text-transform: lowercase;
	line-height: 145%;
	font-size: 20pt;
	font-variant: small-caps;
}
        </style>
    </head>
    <body>
                     <style type="text/css">
            .inset { text-shadow:#fff 0px 1px 0, #000 0 -1px 0;}
.inset span { line-height:1em; font-size:1em; font-weight:bold; color: steelblue} 
        </style>
        
        <h1 class="inset"><span>ENTER THE VERIFICATION CODE ... </span></h1>
       <%  String hval =request.getParameter("loginId").toString();%>
       <% String semail = request.getParameter("loginEmail"); 
       out.println("<p id='pd'>Login EMail Id is .."+semail+"</p>");
       %>
       
        <form name="f2" method="post" action="/MystryHunt/chck">
      <center>      <input type="text" name="itxt" value="" required id="xbt"/>
            <input type="submit" name="b2" value="Click Me Here" class="a_demo_two"/></center>
            <input type="hidden" name="itxt1" value=<%=hval%>>
            <input type="hidden" name="itxtmail" value=<%=semail%>>
            
            
        
                    </form>
        <%
        
         String stt = request.getParameter("loginId").toString();         
        out.println("<p id='pd'>Code is .."+stt+"</p>");
        
        %>
       
      
       <!--
String str = request.getParameter("loginId").toString();
       out.println(str);
 String strk= request.getParameter("itxt").toString();      
 out.println(strk);
 if(strk.equals(str)){
     response.sendRedirect("/WebApplication7/thnk.jsp");
 }
 else
     response.sendRedirect("/WebApplication7/err.jsp");

       -->
       
    </body>
</html>
