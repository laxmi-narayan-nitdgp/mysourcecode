<%-- 
    Document   : regstration
    Created on : Jul 19, 2012, 1:02:25 PM
    Author     : @ hiddenprivacy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <title>JSP Page</title>
        <style>
            body {	
	padding: 2em 6em;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 100%;
	background: #eee;
       color:darkolivegreen;
	}
            .a_demo_two{
            background-color: #3bb3e0;
	padding:5px;
	position:relative;
	font-family: 'Open Sans', sans-serif;
	font-size:8px;
	text-decoration:none;
	color:#fff;
	background-image: linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -o-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -moz-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -webkit-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -ms-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -webkit-gradient(
	linear,
	left bottom,
	left top,
	color-stop(0, rgb(44,160,202)),
	color-stop(1, rgb(62,184,229))
	
	);
	-webkit-box-shadow: inset 0px 1px 0px #7fd2f1, 0px 6px 0px #156785;
	-moz-box-shadow: inset 0px 1px 0px #7fd2f1, 0px 6px 0px #156785;
	-o-box-shadow: inset 0px 1px 0px #7fd2f1, 0px 6px 0px #156785;
	box-shadow: inset 0px 1px 0px #7fd2f1, 0px 6px 0px #156785;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;


text-decoration: 		none;
	font: 					15px/1em 'Droid Sans', sans-serif;
	font-weight: 			bold;
	text-shadow: 			rgba(255,255,255,.5) 0 1px 0;

}

.a_demo_two::before {
	background-color:#072239;
	content:"";
	display:block;
	position:absolute;
	width:100%;
	height:100%;
	padding-left:2px;
	padding-right:2px;
	padding-bottom:4px;
	left:-2px;
	top:5px;
	z-index:-1;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	-o-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 0px 1px 0px #fff;
	-moz-box-shadow: 0px 1px 0px #fff;
	-o-box-shadow: 0px 1px 0px #fff;
	box-shadow: 0px 1px 0px #fff;
}

.a_demo_two:active {
	color:#156785;
	text-shadow: 0px 1px 1px rgba(255,255,255,0.3);
	background:rgb(44,160,202);
	-webkit-box-shadow: inset 0px 1px 0px #7fd2f1, inset 0px -1px 0px #156785;
	-moz-box-shadow: inset 0px 1px 0px #7fd2f1, inset 0px -1px 0px #156785;
	-o-box-shadow: inset 0px 1px 0px #7fd2f1, inset 0px -1px 0px #156785;
	box-shadow: inset 0px 1px 0px #7fd2f1, inset 0px -1px 0px #156785;
	top:7px;
}


.a_demo_two:active::before {
	top:-2px;
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
#ttx{
  text-shadow: -1px -1px 1px #fff, 1px 1px 1px #000;
        color: blueviolet;
        font: 20px 'Museo700';  
}
            </style>
    </head>
    <body>
        <%
        String smail = request.getParameter("itxtmail");
        out.println("Your Email Id --- "+smail);
        %>
        
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
<td><input name="ptxt" type="password" placeholder="Enter The Password" id="xbt"  required/></td>
</tr>
                      </tbody>
                  </table>
                
<input type="Submit" name="sub" id="sub" value="Login Here" class="a_demo_two"/>
            </fieldset>

        </form>
<br><br><br>
<form name="signin" action="/MystryHunt/register" method="post" id="ttx"> 
<center>
<div>
    <fieldset style="float: left">
        <table border="0">
            <legend>Registration Details</legend>
            <tbody style="column-gap: 2px;">
                <tr>
                    <td style="width: 150px"><center>First Name  :</center></td>
                    <td><input name="fname" type="text"  placeholder="Enter The Name Here" required id="xbt"/></td>
                </tr>
                <tr>
                    <td style="width: 150px"><center>Middle Name :</center></td>
                    <td><input name="mname" type="text"  placeholder="Enter The Middle Name Here"  id="xbt"/></td>
                </tr>
                <tr>
                    <td style="width: 150px"><center>Last Name :</center></td>
                    <td><input name="lname" type="text" placeholder="Enter The Last Name" required name="up" id="xbt"/></td>
                </tr>
                <tr>
                    <td style="width: 150px"><center>Your Email Id :</center></td>
        <td><input name="eid" type="email" placeholder="Enter The Email ID" required id="xbt" value="<%=smail%>"/></td>
                </tr>
                <tr>
                    <td style="width: 150px"><center>Your Password :</center></td>
                    <td><input name="pass" type="password" placeholder="Enter The Password" required id="xbt"/></td>
                </tr>
            </tbody>
        </table>
<input name="eidd" type="hidden" placeholder="Enter The Email ID" required id="xbt" value="<%=smail%>"/>
    
    <!-- <label>           <br><br></label>
    <label>            <br><br></label>
    <label> ast Name             <br><br></label>
    <label>          <br><br></label>  
    <label>          <br><br></label> 
    -->
<label>I Am</label> 
<select name="sex" size="0" required>
<option value="Male"> Male </option>
<option value="Female"> Female </option>
</select>
<BR></br>
<label> BirthDay </label>
<select name="birthday_month" id="birthday_month"> <option value="5">Month:</option><option value="1">Jan</option><option value="2">Feb</option><option value="3">Mar</option><option value="4">Apr</option><option value="5">May</option><option value="6">Jun</option><option value="7">Jul</option><option value="8">Aug</option><option value="9">Sep</option><option value="10">Oct</option><option value="11">Nov</option><option value="12">Dec</option></select> 
<select name="birthday_day" id="birthday_day" aria-label="Day" class=""><option value="20">Day:</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select> 

<select name="birthday_year" id="birthday_year" ><option value="1989">Year:</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option></select>
<br>
</br>
<input name="sign_up" type="submit" value="SignUP Here" class="a_demo_two" />

</fieldset>
</div>
</center>
       </form> 
    </body>
</html>
