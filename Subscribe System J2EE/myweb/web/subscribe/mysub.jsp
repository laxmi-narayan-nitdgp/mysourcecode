<%-- 
    Document   : mysub
    Created on : 28 Jun, 2013, 2:22:04 PM
    Author     : kode-crypt
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection;"%>
<%@page import="java.sql.*;"%>
<%@page import="java.sql.ResultSet;"%>
<%@page import="java.sql.DriverManager;"%>
<%@page import="java.sql.SQLException;"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../bootstrap/css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="../bootstrap/css/bootstrap-responsive.css">
        <title>JSP Page</title>
    </head>
    <body class="well">
    <center><h1 class="well" style="color: red"> Admin Console Page for sending E-mails </h1></center>
        <h4 class="well" style="color: #000"> You are logged In as :  <%=  session.getAttribute("username")       %> </h4>
        
        
        <form name="f1" action="/myweb/dummy" class=" well form-horizontal">
            <div class="control-group">
            <center><input type="submit" name="c11" value="click here to send mails " class="well-small btn btn-primary" /></center>
            
        <%
            ArrayList<String> st = new ArrayList();
            
            try{
            Connection cnn;
            Statement pst;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","root");
            String sql ="select * from myweb.register where substatus='1';";
            pst = cnn.createStatement();
            rs=pst.executeQuery(sql);
            while(rs.next()){
                st.add(rs.getString(3).toString().trim());
                //out.println(rs.getString(3));
         //       out.println("\n \n <br><br>");
                
            }
            }catch(SQLException e ){
                out.println(e.toString());
            }
            
            for(String stk : st){
           //     out.println(stk);
                out.println("\n");
            }
        %>
        <%! StringBuilder stkBuilder; %>
        <%
            stkBuilder= new StringBuilder(" ");
            for(String smix : st){
                stkBuilder.append(smix+";<br>");
            }
            
            //out.println("<h1>This is working fine </h1>");
            //out.println(stkBuilder);
           int x = st.size();
            //out.println("value is"+x);
        %>
        
        
       <h1 class="well" style="color: #006dcc">  List of Email Ids To send mail : </h1> 
        <textarea rows="<%=x+5%>" cols="100" name="txt11" class="well span8"><%
            for(String stk : st){
                out.println(stk+";");
                out.println("\n");
            }
        %></textarea>
        <h3 class="well" style="color: #006dcc">  Enter Your message Or links Here To add them in Email :  </h3>
        <div class="well">
            <h4 class="well-small">Enter message here : </h4>
        <textarea rows="10" cols="100" name="msg" ></textarea>
        </div>
        
        
        
        </div>
        </form>
    </body>
</html>
