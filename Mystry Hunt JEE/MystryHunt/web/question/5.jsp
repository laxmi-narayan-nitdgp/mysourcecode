<%-- 
    Document   : 5
    Created on : Jul 30, 2012, 5:49:15 PM
    Author     : hiddenprivacy
--%>
<%@include file="headlink_page.jsp" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="page.css"/>
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
        </style>
    </head>
    <body>
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
</style>
<div id="footer">
            <h2><center> Developed At &COPY;CAD &trade; All Rights are Reserved regarding event  </center></h2>            
            </div>
        <form name="f5" action="middle.jsp" method="post">
            <br><br>    
            <h1 class="winn">Question 5.</h1>
            <br><br>
            <div class="mod">
                <label><p class="customfont">enter your favrite City(alld)</p></label>
                <input type="text" name="ans" required id="xbt" />
                <input type="hidden" value="5" name="hdd" />
                <input type="submit" value="Click Here" class="a_demo_two"/>
                <%
                    if (session.getAttribute("username") == null) {
                        response.sendRedirect("/MystryHunt/verifyemail.jsp");
                    } else {
                        String pval = "6";
                        String ss = session.getAttribute("pcount").toString();

                        if (ss.equals("5")) {
                            //        session.setAttribute("pcount",pval);                
                        } else {
                            response.sendRedirect("err.jsp");

                        }
                    }
                %>

                <%
                   // String str = request.getHeader("referer");
                    //out.println("hello #" + str);
                    //out.println(session.getAttribute("username"));
                    //     session.setAttribute("prvcount", "4");
                    session.setAttribute("count", "5");

                %>

            </div>

        </form>
    </body>
</html>
