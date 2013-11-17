package ejbContents;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class ejbHuntDB implements Serializable {

    Connection cnn;
    ResultSet rs;
    java.sql.Statement st;
    java.sql.PreparedStatement pst;

    public void setConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hunt_reg", "root", "root");
            //st=cnn.createStatement();
        } finally {
            return;
        }
    }

    public boolean TransactData(String sql, String ans) {
        try {
            setConnection();
            pst = cnn.prepareStatement(sql);
            // pst.setString(1, uname);
            rs = pst.executeQuery();
            rs.next();
            if (rs.getString(2).equals(ans)) {
                return true;
            }
        } catch (Exception e) {
            
            //return e.toString().;
        }
        return false;
    }

    public String Transactlevel(String sql) {
        try {
            setConnection();
            st = cnn.createStatement();
            // pst.setString(1, uname);
            st.executeUpdate(sql);
        } catch (Exception e) {
            return e.toString();
        }
        return null;
    }

    public String TransactSearchlevel(String sql) {
        String rss = "";
        try {
            setConnection();
            st = cnn.createStatement();
            rs = st.executeQuery(sql);
            rs.next();
            rss = rs.getString(1);
            return rss;
        } catch (Exception e) {
            return e.toString();
        }        
    }
    public String TransactSearchname(String sql) {
        String rss = "";
        try {
            setConnection();
            st = cnn.createStatement();
            rs = st.executeQuery(sql);
            rs.next();
            rss = rs.getString(1);
            return rss;
        } catch (Exception e) {
            return e.toString();
        }        
    }
    public String TransactSearchAll(String sql) {
          String rss="";
        try {
            setConnection();
            st = cnn.createStatement();
            rs = st.executeQuery(sql);
            
             while (rs.next()) {
                 String fn = rs.getString("fname");
                 String mn = rs.getString("mname");
                 String em = rs.getString("email");
                 String lev = rs.getString("level");
                 return ("<tr><td>" + fn + "</td><td>" + mn + "</td><td>" + em + "</td><td>" +lev+ "</td></tr>"); 
             }
             
        }
        catch(Exception e){
            return e.toString();
        }
        return null;
    }
    
}
