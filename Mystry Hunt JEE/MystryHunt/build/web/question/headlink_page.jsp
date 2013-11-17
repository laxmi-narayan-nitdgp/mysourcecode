<%-- 
    Document   : headlink_page
    Created on : Aug 8, 2012, 9:39:42 AM
    Author     : hiddenprivacy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="page.css"/>
        <link rel="stylesheet" href="assets/countdown/jquery.countdown.css" />
        <script src="jquery.js"></script>
		<script src="assets/countdown/jquery.countdown.js"></script>
		<script src="assets/js/script.js"></script>
        
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
    
    
    } 
    #p{  
        text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: saddlebrown;
        opacity: 0.3;
        
    }
      @font-face {
    font-family: "My Custom Font";
    src: url(font.otf) format("truetype");
}


p.customfont { 
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
      <div id="xs">TS x.2</div>  
       
        <div id="ss">
        <nav>
            <ul class="nav">
                <li><a href="home.jsp"  id="ss"><span id="p">Home</span></a></li>
                <li><a href="score.jsp" id="ss"><span id="p">ScorePage</span></a></li>
                <li><a href="logout.jsp" id="ss"><span id="p">LogOut</span></a></li>
               	</ul>
		</nav>
        </div>
<br>     
<div id="countdown" style="display: none"></div> <br><br><br>
    </body>
</html>

