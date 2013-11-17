<%-- 
    Document   : chksubs
    Created on : 4 Jul, 2013, 9:17:26 PM
    Author     : kode-crypt
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <link href="/bootstrap/css/bootstrap.css" type="text/css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
    <body class="well">
    <center><h4 class="well"> This is subscription page </h4></center>
       
        
        
        
        
        <form name="f1" method="post" action="/myweb/myread" class="form-horizontal well">
        <%
            
            String email = session.getAttribute("username").toString().trim();
            String xval = null;
            ResultSet rs = null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "root");
            String sql = "select * from myweb.register where email='" + email + "';";
            Statement st = cnn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                xval = rs.getString(5);
                out.println(xval);
            }
        %>
        <script>
            var xx = <%= xval%>
            alert(xx);
            var xxval;
            $(document).ready(
                    
                    function fun() {
                if(xx===1){
                                    $('#btn').attr({
                                        type: 'submit',
                                        value: 'unsubscribe'
                                        
                                    });
                }
                
                
                
                        $('#btn').click(function() {

                            var x = $('#btn').val();
                            alert(x);
                            if ($('#btn').val() === 'unsubscribe') {
                                
                                    $('#btn').attr({
                                        type: 'submit',
                                        value: 'subscribe'
                                        
                                    });
                                xxval=$('#btn').val();
                                //$('#btn').val('hello');
                                var pp = $('#btn').attr('name');
                                alert(pp);
                                alert("executed");
                            }
                            else {
                                if ($('#btn').val() === 'subscribe') {
                                
                                    $('#btn').attr({
                                        type: 'submit',
                                        value: 'unsubscribe'
        
                                    });
                                }
                                    xxval=$('#btn').val();
                            }
                        }




                        );
                    });


        </script>
        
        <input type="hidden" name="hid" value="<%= email %>" />
        
        <input type="button" name="b1" value="subscribe" id="btn" onclick="fun();" class="btn btn-primary" />
        
        </form>
    </body>
</html>
