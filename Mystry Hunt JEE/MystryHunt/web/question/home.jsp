<%-- 
    Document   : home
    Created on : Jul 31, 2012, 3:55:11 PM
    Author     : hiddenprivacy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="mdb" class="ejbContents.ejbHuntDB"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="page.css"/>
        <style>
    
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
            .tttx{
                font-family: "My Custom Font";
                 text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: blueviolet;
        font: 20px; 
            }
            @font-face {
    font-family: "My Custom Font";
    src: url(font.otf) format("truetype");
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
  
  
}
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <div id="xs" style="height: 100px; width: 200px;">TS x.2</div>  
<div>
    <nav>
            <ul class="nav">
                
                <li><a href="rule.jsp"> Rules </a></li>
        </ul>
        </nav>
</div>
 
       <%
       if(session.getAttribute("username")==null)
                {
              //      response.sendRedirect("/MystryHunt/regstration.jsp");
                }
       %>
       <%
       String xy="";
        String eid = session.getAttribute("username").toString();
        String sql = "select level from registration where email='"+ eid +"'";
        
        String lev = mdb.TransactSearchlevel(sql).toString();
         sql = "select fname from registration where email='"+ eid +"'";
         String nn= mdb.TransactSearchname(sql);
         out.print("<h1 class='tttx'> Welcome ..."+nn.toString().toUpperCase()+"</h1>");
         
       // int leve= Integer.parseInt(lev);
       //leve+=1;
       //String rs = String.valueOf(leve);
        if(lev.equals("15")){
            response.sendRedirect("/MystryHunt/question/thnx.jsp");
        }else{
      
        int x= Integer.parseInt(lev);
        out.print("<h1 class='tttx'>    You are at "+x+" Level</h1>");
        x+=1;
        String pvall = String.valueOf(x);
        session.setAttribute("pcount", pvall);
        xy = String.valueOf(x)+".jsp";
        //out.println(xy);
           }
        %>
         
                <%
//String  icount = session.getAttribute("username").toString();
//int xval = Integer.parseInt(icount);
//out.println("total live sessions "+xval);

%>

<div class="mod">
<a href=<%= xy %>  class="btn"> <span>Click here to Continue .....</span></a>
</div>
    </body>
</html>
