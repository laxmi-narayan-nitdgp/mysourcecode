<%-- 
    Document   : index
    Created on : Jul 19, 2012, 1:00:17 PM
    Author     : hiddenprivacy
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="p1.css"/>
        <title>JSP Page</title>
        <style>
               #xs{
        
        alignment-adjust: middle;
        text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: #9c8468;
        opacity: 0.3;
        font: 50px 'Museo700';
        margin-top: 0px;
        margin-left: 0px;
    color: #fff;
    text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;     
    
    
    
            }
        </style>
    </head>
    
    <body>
        
        <form method="post" name="f1">
            <center><h1 id="xs">Technoshine x.2 Presents NETHUNT</h1></center>
            <div class="mod" style="background-color:#1a74a1"> 
            <a href="verifyemail.jsp" class="btn"><span> click here to Login / Register </span></a>
            </div>
        </form>
        <%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       //out.println("Welcome to mystryhunt website!");
       hitsCount = 1;
    }else{
       /* return visit */
      // out.println("Welcome Back to mystryhunt website!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<center>
    <p style="color: #3bb3e0">Total number of visits: <%= hitsCount%></p>
</center>
    <center><h1 id="xs"> Under Testing ... Registration will be Up soon... </h1></center>
    </body>
</html>
