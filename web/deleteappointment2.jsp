
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <%  
          Connection con;
          Statement stmt,stmt1;
          try{
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
             stmt = con.createStatement();
             stmt1 = con.createStatement();

        

                  int userplan_id = Integer.parseInt(request.getParameter("id"));

           
                 if(userplan_id==0)
                 {
                     System.out.println("Error");
                           
                 }
                 else
                 {
                     System.out.println("before update:"+userplan_id);
                     String sql = "update payment set status='"+"Cancelled"+"' ,action ='"+"Refunded"+"'where id='"+userplan_id+"' ";
                        System.out.println("Frst:"+sql);
                       stmt.executeUpdate(sql);
                           System.out.println(sql);
                          response.sendRedirect("patientbooking1.jsp");
                          
                 }
                 }
    catch(Exception e){
        e.printStackTrace();
}  %>
   