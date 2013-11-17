<%-- 
    Document   : reg
    Created on : 28 Jun, 2013, 10:52:29 AM
    Author     : kode-crypt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title> Page </title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript" src="../register/formjs.js"></script>
<script type="text/javascript" src="jquery.validate.min.js"></script>
<link rel="stylesheet" href="formcss.css"  type="text/css"/>
<link rel="stylesheet" href="bootstrap.css" type="text/css" />
<script>
$(function() {
$( "#tabs" ).tabs();
});
</script>
</head>
<body class="well">
    <div id="tabs" class="well">
        <ul class="well">
            <li><a href="#tabs-1" > Sign UP</a></li>
<li><a href="#tabs-2"> Log In Page</a></li>

</ul>
    <div id="tabs-1" class="well">
    
    
        <form action="/myweb/mymail" method="post" id="register-form" novalidate="novalidate" class="well form-horizontal">

            <center> <h2 class="well" style="color: #0081c2">User Registration</h2></center>

    <div id="form-content" class="well">
        <fieldset>

            <div class="fieldgroup">
                <label for="firstname">First Name</label>
                <input type="text" name="firstname">
            </div>

            <div class="fieldgroup">
                <label for="lastname">Last Name</label>
                <input type="text" name="lastname">
            </div>

            <div class="fieldgroup">
                <label for="email">Email</label>
                <input type="text" name="email">
            </div>

            <div class="fieldgroup">
                <label for="password">Password</label>
                <input type="password" name="password">
            </div>

            <div class="fieldgroup">
                <input type="submit" value="Register" class="submit">
            </div>

        </fieldset>
    </div>

</form>
    
    
</div>
        <div id="tabs-2" class="well">
            <form name="f1" action="/myweb/llogin" method="post" class="well form-horizontal">
                <center> <h2 class="well" style="color: #0081c2">User LogIn</h2></center>
                <div class="fieldgroup">
                <label>  Email Id : </label><input type="text" name="email" value="" required /> <br>
                </div>
                <div class="fieldgroup">
                <label>  Password : </label> <input type="text" name="pass" value="" required /><br>
                </div>
    <input type="submit" name="sub" value="Login here" class="btn btn-primary">
    </form>
</div>
</div>
    
    <style>
        #tabs ul{
            background: none;
            background: #149bdf;
        }
        
        
        #tabs ul li{
            display: inline-block; 
    float: none; 
    top: 0px; 
    margin: 0em;
            
        }
        #tabs ul{
            
     height: 2.35em; 
    text-align: center; 
        
        }
        
        
        
    </style> 
    
    
    
</body>

</html>