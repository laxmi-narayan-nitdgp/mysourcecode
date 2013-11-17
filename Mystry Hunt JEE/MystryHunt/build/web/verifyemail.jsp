<%-- 
    Document   : verifyemail
    Created on : Sep 25, 2012, 10:57:04 AM
    Author     : hiddenprivacy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="p1.css"/>
        <style>
            
                #ttx{
  text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: blueviolet;
        font: 20px 'Museo700';  
}
           
            
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
#xs1 {float:  right;
            text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: #9c8468;
        opacity: 0.3;
        font: 50px 'Museo700';
        margin-top: 0px;
        margin-left: 0px;
    color: #fff;
    text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;     
            }
            #cc{
                color: darkblue;
                background-color: #00FF55;
                
            }
        </style>
    </head>
    
    <body>
        <div id="xs">TS x.2</div><br>
        <form name="ff1" method="post" action="/MystryHunt/NewServlet2" id="ttx">
            <label id="cc">Enter Your<strong> GMAIL ID </strong>For Verification And Registartion</label><br><br> <input type="email" name="t11" value="" required id="xbt"/>
            <input type="submit" value="Click me here" class="a_demo_two"/>
        </form>
        
          <form name="login" action="/MystryHunt/login_servlet" method="post" id="ttx">
            <fieldset style="float:right">
                <legend>LogIn</legend>
                  <table border="0">
                      <tbody style="column-gap: 2px;">
                          <tr>
    <td>     <label>E-mail</label></td>
    <td><input name="etxt" type="email"  placeholder="Enter The Email" required id="xbt"/></td>
</tr>
<tr>
<td><label>Password</label></td>
<td><input name="ptxt" type="password" placeholder="Enter The Password" id="xbt" required /></td>
</tr>
                      </tbody>
                  </table>
                
<input type="Submit" name="sub" id="sub" value="Login Here" class="a_demo_two"/>
            </fieldset>

        </form>
        <style>
           #xs {
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
        
        <div id="ttx">
            <br><br>
            <strong>  To Claim For the Prize You have to be<br> Registered in TechnoshineX.2 Main WebSite. </strong>
            
        </div>
        <p ></p>
    </body>
</html>
