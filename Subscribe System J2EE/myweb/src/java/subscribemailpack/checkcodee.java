/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package subscribemailpack;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.StringTokenizer;
import javax.mail.internet.InternetAddress;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kode-crypt
 */
public class checkcodee extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            
            
            ArrayList<String> em= new ArrayList();

            
            
            
            String st = "nitdgp.673@gmail.com;ca.nitdgp@gmail.com;man.abc@gmail.com;";
            
            out.println(st.toString());
            StringTokenizer stk = new StringTokenizer(st,";");
           int xbug=0; 
           int xcn = stk.countTokens();
           out.println("total count of tokens are"+xcn);
           out.println("<br/><hr/>");
           for(int x=0;x<xcn;x++){
                em.add(stk.nextToken().trim());
                xbug++;
            
            }
            
            out.println("value of xbug is "+xbug);
            
        out.println("The leght of em is "+em.size());    
        String[] listtoaray = em.toArray(new String[em.size()]);
        out.println("The leght is "+listtoaray.length);
        
        for(int p=0;p<listtoaray.length;p++){
            out.println("This is from araay list dude ");
            out.println("<br/><hr/>");
            out.println(listtoaray[p]);
           out.println("<br/><hr/>");
        }
        
        
            for(String val : em){
                out.println(val);
            }
            
            //send mail
            
            String[] to = new String[listtoaray.length];
          for(int x=0;x<listtoaray.length;x++){
          to[x]    =listtoaray[x];
          }
          
            for(int x=0;x<listtoaray.length;x++){
                out.println("<br/><hr/>");
          out.println("i am from To list array "+to[x].trim());
          out.println("<br/><hr/>");
          
          }
            
            InternetAddress[] addressTo = new InternetAddress[to.length];
            out.println("My lenth is "+addressTo.length);
            out.println("<br/><hr/>");
            out.println("My lenth is "+to.length);
            try{
            for (int ix = 0; ix < to.length; )
            {
                //out.println("I am copying here "+to[ix]);
                
                addressTo[ix] = new InternetAddress(to[ix].toString().toLowerCase().trim());
                out.println("<br/><hr/>");
               out.println(new InternetAddress(to[ix].toString().toLowerCase().trim()));
                out.println("value is "+addressTo[ix]);
                out.println("<br/><hr/>");
               ix++;
            }
            
            
            
            }catch(Exception e){
                out.println(e.toString());
            }
            
            
            
            
            
            
            
            
            
            
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
