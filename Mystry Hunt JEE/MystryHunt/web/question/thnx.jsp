<%-- 
    Document   : thnx
    Created on : Aug 1, 2012, 5:32:36 AM
    Author     : hiddenprivacy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="page.css"/>
        <title>JSP Page</title>
        <style>
            
#ss{
    float: left;
    margin-top: 0px;
    margin-left: 0px;
    margin-bottom: 20px;
    }
.nav {
  list-style: none;
  text-align: center;
}

.nav li {
  position: relative;
  display: inline-block;
  margin-right: -4px; 
}

.nav li:before {
  content: "";
  display: block;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #fff;
  width: 100%;
  height: 1px;
  position: absolute;
  top: 50%;
  z-index: -1;
}

.nav a {
  display: block;
  background-color: #f7f7f7;
  background-image: -webkit-gradient(linear, left top, left bottom, from(#f7f7f7), to(#e7e7e7));
  background-image: -webkit-linear-gradient(top, #f7f7f7, #e7e7e7); 
  background-image: -moz-linear-gradient(top, #f7f7f7, #e7e7e7); 
  background-image: -ms-linear-gradient(top, #f7f7f7, #e7e7e7); 
  background-image: -o-linear-gradient(top, #f7f7f7, #e7e7e7); 
  color: #a7a7a7;
  margin: 36px;
  width: 80px;
  height: 80px;
  position: relative;
  text-align: center;
  line-height: 80px;
  border-radius: 50%;
  box-shadow: 0px 3px 8px #aaa, inset 0px 2px 3px #fff;
}

.nav a:before {
  content: "";
  display: block;
  background: #fff;
  border-top: 2px solid #ddd;
  position: absolute;
  top: -18px;
  left: -18px;
  bottom: -18px;
  right: -18px;
  z-index: -1;
  border-radius: 50%;
  box-shadow: inset 0px 8px 48px #ddd;
}

.nav a:hover {
  text-decoration: none;
  color: #555;
  background: #f5f5f5;
}

#xs{
        float: left;
        
        text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: #9c8468;
        opacity: 0.3;
        font: 50px 'Museo700';
        margin-top: 0px;
        margin-left: 0px;
    color: #fff;
    text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;     
    
    
    } #xsx{
        text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: #9c8468;
        opacity: 0.3;
        font: 50px 'Museo700';
        margin-top: 0px;
        margin-left: 0px;
    color: #fff;
    text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;     
    
    
    } 
    #xs1{
        float: right;
        
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
        <br><br>
        <div id="xs">TS x.2</div><div id="xs1">C.A.D</div>  
        <br><br><br>
        <%
        if(session.getAttribute("username")==null)
                {
                    response.sendRedirect("/MystryHunt/regstration.jsp");
                }
        %>
        <style>
     .inset { text-shadow:#fff 0px 1px 0, #000 0 -1px 0;}
.inset span { line-height:1em; font-size:2em; font-weight:bold; color:#a7a7a7} 
        </style>
        
        
        
        <div class="mod">
        <h1 class="inset"><p class="customfont"><span>Thanks For Playing NET HUNT<span></p></h1>
                        
                        </div>
        
      <nav>   
           <ul class="nav">
     <li><a href="logout.jsp">LogOut </a></li>
      <li><a href="score.jsp">SCORE</a></li>
      </ul>
      </nav>
    </body>
</html>
