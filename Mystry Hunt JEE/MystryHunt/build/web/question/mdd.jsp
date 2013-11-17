<%-- 
    Document   : mdd
    Created on : Sep 15, 2012, 11:46:57 PM
    Author     : hiddenprivacy
--%>
<jsp:useBean id="mdb" class="ejbContents.ejbHuntDB"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       // String pssion =session.getAttribute("prvcount").toString();
        //String crrsion = session.getAttribute("count").toString();
       // int xpssion = Integer.parseInt("pssion");
        //int xcrr = Integer.parseInt("crrsion");
          //      int xxx = xcrr-xpssion;
            //    if(xxx==1){
        String prv = request.getParameter("prvcount");
        String cc = request.getParameter("count");
                 int pprv = Integer.parseInt(prv);
                 int ccc = Integer.parseInt(cc);
//                 int 
        
            String qid = request.getParameter("hdd");
             int x = Integer.parseInt(qid);
            String rString = request.getParameter("ans");
            
            String sql = "select * from hunt_reg.ans_table WHERE ans_level='" + qid + "'";

            if (mdb.TransactData(sql, rString)) {
                
             sql= "update hunt_reg.registration set level='"+qid+"' where email='"+session.getAttribute("username").toString()+"';";  
            mdb.Transactlevel(sql);
                x++;

                String p = String.valueOf(x) + ".jsp";
                //response.sendRedirect("/Mystry_Hunt/question/"+p);
                if(x<=6){                    
                response.sendRedirect(p);    
                       }
                   else{                    
                   response.sendRedirect("/MystryHunt/question/thnx.jsp");                    
                      }
                
            }
                                
             else{
                String p = String.valueOf(x)+ ".jsp";
                response.sendRedirect(p);
                       }
                       
                      
              //         }
               // else
                 //   response.sendRedirect("/Mystry_Hunt/question/errr.jsp");
                // rs.next();

                //out.println(sql);
                //        out.println(mdb.TransactData(sql,rString));
                // response.sendRedirect("http://localhost:8080/Mystry_Hunt/question/2.jsp");
%>
    </body>
</html>
