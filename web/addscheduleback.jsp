

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <%     Connection con;
Statement stmt;
Statement stmt1;    
       
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
             stmt = con.createStatement();
             stmt1 = con.createStatement();

      try{  
        String staffname = request.getParameter("did");
        System.out.println(staffname);
        String gender = request.getParameter("dname");
         System.out.println(gender);
        String phone = request.getParameter("gender");
         System.out.println(phone);
        String address = request.getParameter("sp");
         System.out.println(address);
        String qualification = request.getParameter("date");
         System.out.println(qualification);
         String username = request.getParameter("timing");
          System.out.println(username);
                 String email=request.getParameter("fee");
         
                  
                    
                
                 if(staffname.isEmpty() || gender.isEmpty()  || phone.isEmpty() || address.isEmpty() || qualification.isEmpty()|| email.isEmpty() ||
                                    username.isEmpty())
                 {
                     System.out.println("Error");
                         

                 }
                 else
                 {
            String sql = "INSERT INTO doctor_list (doctor_id,doctor_name,gender,specialist,date,timing,fee) "
                    + "values ('"+staffname+"','"+gender+"','"+phone+"','"+address+"','"+qualification+"','"+username+"','"+email+"')";
                       System.out.println(sql);
                       stmt.executeUpdate(sql);
                          response.sendRedirect("addschedule1.jsp");
                 }   }
    catch(Exception e){
        e.printStackTrace();
        System.out.println(e);
}
               %>
   