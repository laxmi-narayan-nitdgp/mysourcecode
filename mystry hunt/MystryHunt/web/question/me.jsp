<%-- 
    Document   : middle
    Created on : Jul 31, 2012, 3:46:09 PM
    Author     : hiddenprivacy
--%>

<jsp:useBean id="mdb" class="ejbContents.ejbHuntDB"></jsp:useBean>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
if(session.getAttribute("username")==null)
                {
                    response.sendRedirect("/Mystry_Hunt/regstration.jsp");
                }
%>
        <%
        
   Date date = new Date();
   String sdate= date.toString();
   String ss =sdate.substring(0, 20);
   
            String qid = request.getParameter("hdd");
            int x = Integer.parseInt(qid);
            int check = x;
            check = check - 1;
            String str = session.getAttribute("username").toString();

            String sql = "select level from registration where email='" + str + "'";
            String lev = mdb.TransactSearchlevel(sql);
            int xchange = Integer.parseInt(lev);
              if (xchange == check) {
                String rString = request.getParameter("ans");

                sql = "select * from hunt_reg.ans_table WHERE ans_level='" + qid + "'";

                if (mdb.TransactData(sql, rString)) {
                    sql = "update hunt_reg.registration set level='" + qid + "',date_time='"+ss+"' where email='" + session.getAttribute("username").toString() + "';";
                    mdb.Transactlevel(sql);
                    x++;


                    //response.sendRedirect("/Mystry_Hunt/question/"+p);
                    if (x <= 6) {
                        String p = String.valueOf(x) + ".jsp";
                        response.sendRedirect(p);
                        session.setAttribute("pcount", x);
                    } else {
                        response.sendRedirect("/Mystry_Hunt/question/thnx.jsp");
                    }

                } else {
                    String p = String.valueOf(x) + ".jsp";
                    response.sendRedirect(p);
                }
            } else {
                response.sendRedirect("/Mystry_Hunt/question/wrong.jsp");
            }

        %>
    </body>
</html>
