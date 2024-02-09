

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
   <%  
      Statement stmt,stmt1;
              Connection con;
                try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Start");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
            System.out.println("Getconnection Start");
            stmt = con.createStatement();
            stmt1 = con.createStatement();

            String id = request.getParameter("id");
           
            String condition = request.getParameter("fd");

            String j = null, k = null, jf = null;

            String sql = "update payment set patient_condition='" + condition + "',view_statues='" + "1" + "' where id='" + id + "'";
            System.out.println("second:" + sql);
            stmt.executeUpdate(sql);
            String sqll = "select * from payment where id=" + id;
            System.out.println(sqll);
            ResultSet rs = stmt.executeQuery(sqll);
            while (rs.next()) {

                j = rs.getString(5);
            }
            request.setAttribute("alertMsg", "Profile Updated Successfully");
            request.setAttribute("name", j);
            try {
                int i = 1;
                int t=1;
                String sql2 = "select * from payment where doctor_id=" + j;
                System.out.println(sql2);
                ResultSet rss = stmt.executeQuery(sql2);
                while (rss.next()) {
                     if ("Booked".equals(rss.getString(13)) && (rss.getInt(16) != t)) {
                   
                     String msg = "Dear patient, You are at the " + (i++) + "th position in appointment order on "+ rss.getString(7)+" at "+rss.getString(8);
                    System.out.println(msg);
                     
                     String sql6 = "INSERT INTO msg (user_id,message)" + "values (?,?)";
                    PreparedStatement statement = con.prepareStatement(sql6);

                    statement.setString(1, rss.getString(3));
                    statement.setString(2, msg);
                   
System.out.println("Success "+i);
                   
                    statement.executeUpdate();
                    response.sendRedirect("doctor_patient1.jsp");
                     }
                 
                }

            } catch (Exception e) {
                System.out.println(e);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    
     
    






%>