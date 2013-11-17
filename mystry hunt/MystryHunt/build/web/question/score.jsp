<%-- 
    Document   : score
    Created on : Aug 1, 2012, 7:59:54 AM
    Author     : hiddenprivacy
--%>


<jsp:useBean id="mdb" class="ejbContents.ejbHuntDB"></jsp:useBean>
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
  
  
}
        </style>
    </head>
    <body style="background-color:#7fd2f1 ">
        
        <%
        if(session.getAttribute("username")==null)
                {
                    response.sendRedirect("/MystryHunt/regstration.jsp");
                }
        %>
        <%
        String str = session.getAttribute("username").toString();
        //String name = String.valueOf(ob);
         String sql = "select fname from registration where email='"+ str +"'";
         String nn= mdb.TransactSearchname(sql);
         
         sql ="select level from registration where email='"+str+"'";
   String sc= mdb.TransactSearchlevel(sql);
        //out.println(sc);
        out.println("<h1 class='winn'> HI.."+nn.toString()+"    .....You have Completed  "+sc+" Level <br></h1>");
        
        %>
        <nav>
            <ul class="nav">
                <br><br><br>
        <li><a href="home.jsp"> BACK </a></li>
        </ul>
        </nav>
    </body>
</html>
