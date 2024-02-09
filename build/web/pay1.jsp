

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <html>
      <%  
          Connection con;
Statement stmt=null;
Statement stmt1;
         try{
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
             stmt = con.createStatement();
                 
         
          String list_id = request.getParameter("id");
        String name = (String)session.getAttribute("p");
                 System.out.println("Helloopoo");

                  String amount = (String)session.getAttribute("p8").toString();
                      System.out.println("iiiiii"+amount);

                   String bank =(String) session.getAttribute("p9").toString();
                    System.out.println(amount);
                   String account = (String)session.getAttribute("p10").toString();
                    System.out.println(amount);
                    String card = (String)session.getAttribute("p11"); System.out.println(card);
                     String un =(String)session.getAttribute("p6").toString(); System.out.println(un);
                   String ui= (String)session.getAttribute("p7").toString(); System.out.println(ui);
                   String dn = (String)session.getAttribute("p2").toString(); System.out.println(dn);
                    String di = (String)session.getAttribute("p1").toString(); System.out.println(di);
                     String sp = (String)session.getAttribute("p4").toString(); System.out.println(sp);
                   String date = (String)session.getAttribute("p12").toString(); System.out.println(date);
                   String time =(String)session.getAttribute("p5").toString(); System.out.println(time);
                     System.out.println(amount);
              
               
            String sql = "INSERT INTO payment(username,user_id,doctor_name,doctor_id,specialist,date,timing,amount,bankname,account,card,status,action,patient_condition,view_statues)values ('"+un+"','"+ui+"','"+dn+"','"+di+"','"+sp+"','"+date+"','"+time+"','"+amount+"','"+bank+"','"+account+"','"+card+"','"+"Booked"+"','"+"Paid"+"','"+"null"+"','"+"0"+"')";
                      System.out.println(sql);
                       stmt.executeUpdate(sql);
                           
                           
                           response.sendRedirect("doctor_list1.jsp");
                 
         }
         catch(Exception e){
             System.out.println("JJJJ  "+e);
         }
       
        %>
        </html> 