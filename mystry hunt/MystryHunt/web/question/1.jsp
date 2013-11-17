<%-- 
    Document   : 1
    Created on : Jul 30, 2012, 5:48:11 PM
    Author     : hiddenprivacy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="headlink_page.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="page.css"/>
        <title>JSP Page</title>
        <style>
                        #footer{
	background-color: mediumvioletred;
	bottom: 0;
	box-shadow: 0 -1px 2px #111111;
	height: 50px;
	left: 0;
	position: fixed;
	width: 100%;
	z-index: 100000;
}

#footer h2{
	color: yellowgreen;
	font-size: 14px;
	
}       
 

#xbt{
    height: 30px;
    width: 200px;
    border: 5px;
    border-color: #072239;
    
    border-radius: 5px;
    border:0;
	padding:4px 8px;
	margin-bottom:0px;
}
        </style>
    </head>
    <body>
        <form name="f1" action="middle.jsp" method="post">
            <br><br>
            <h1 class="winn">Question 1.</h1>
            <br><br><br>
            <div class="mod">

                <label><p class="customfont">enter your favrite programming language(java)</p></label>
                <input type="text" name="ans" required  id="xbt"/>
                <input type="hidden" value="1" name="hdd" />
                <input type="submit" value="Click Here" class="a_demo_two"/>
            </div>
                <%
                    if (session.getAttribute("username") == null) {
                       response.sendRedirect("/MystryHunt/verifyemail.jsp");
                    } else {
                        
                        //String pval = "2";
                        // String pcount;
                        //session.setAttribute("pcount", pval);
                        String strr = session.getAttribute("pcount").toString();
                     //   out.println(strr);
                    }
                %>

                

                <%

                    session.setAttribute("count", "1");
                    // session.setAttribute("prvcount", "0");
%>

            

        </form>
<div id="footer">
            <h2><center> Developed At &COPY;CAD &trade; All Rights are Reserved regarding event  </center></h2>            
            </div>
    </body>
</html>
