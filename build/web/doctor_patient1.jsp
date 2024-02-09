<%@page import="com.sun.xml.ws.rx.rm.protocol.wsrm200702.SequenceAcknowledgementElement.Final"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Login Form</title>

</head>
<style>
 .first{
                background-color:black;
                color:white;
            }
            body .dashboards{
                background-size:cover;
                background-repeat:no-repeat;
                background-attachment:fixed;
                margin:0px;
                padding:0px;
            }
            .fleft{
                float:left !important;
                margin-top:10px;
                margin-left:10px;
            }
            .fright{
                float:right !important;
                text-align:right;
                margin: 10px 30px;
                display:inline-block; 
                border-radius: 2px;
                font-weight: bold;
                text-transform: uppercase;
                outline:0px;
                border:none;

            }
            f-item{
                display:block;
                border:none;
                outline:0px;
            }
            .topnav-name{
                position:relative;
            }
            .centered {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                color:black;
                text-transform: uppercase;
                font-size:22px;
                color:black;
            }
            button{
                border:none;
                color:white;
                padding:10px 30px;
                text-align:center;
                text-decoration:none;
                display:inline-block;
                font-size:16px;
                margin:4px 2px;
                cursor:pointer;
                background-color:black;
                border-radius:10px;

            }
            #edit{

                border:none;
                color:white;
                padding:10px 30px;
                text-align:center;
                text-decoration:none;
                display:inline-block;
                font-size:16px;
                margin:4px 2px;
                cursor:pointer;
                background-color:green;
                border-radius:10px;


            }
            #delete{

                border:none;
                color:white;
                padding:10px 30px;
                text-align:center;
                text-decoration:none;
                display:inline-block;
                font-size:16px;
                margin:4px 2px;
                cursor:pointer;
                background-color:red;
                border-radius:10px;


            }
            table{
                font-size: 10px;

            }

</style>
<body>
     <%
     String name1 =null;
     name1 = (String) session.getAttribute("name");
        System.out.println("attribute"+name1);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name1==null){
     response.sendRedirect("index.jsp");
    }%>
    
     <div class="first" style="width:100%;height:45px;">
                     <h2 class="topnav-name fleft" title="name" >HOSPITAL NETWORK SYSTEM</h2>
      
                      <div class="dropdown fright">
                           <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/index.jsp';">Logout</button>
                          </div>
                          
                            
                        
                          <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/doctor_patient1.jsp';" >Patient List</button>
                       </div>
                     
                    
                          
                 </div>

    <div class="container1" style="width:100%;height:100%;position:absolute">
        
    <table border="1" style="height:50px;width: 1000px;">
                    <br>
                    <h1 style='color:black;'>APPOINTMENS</h1>
                    <br>
                    <tr>

<!--                        <th style="height: auto;width:100px;">Booking Id </th>-->
                        <th>Patient Name</th>
                        <th>Date</th>
                        <th>Timing</th>

                        <th>Action</th>

                    </tr>
                    
                    <% 
                        String j=(String)session.getAttribute("j");
                    
                        Connection con;
                        Statement stmt,stmt1;try {
                            String dd = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            
                            System.out.println("Driver Start");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                            System.out.println("Getconnection Start");
                            stmt = con.createStatement();
                            try {
                                String sql4 = "select * from doctor_details where username='" + j + "'";
                                System.out.println(sql4);
                                ResultSet rs2 = stmt.executeQuery(sql4);
                                while (rs2.next()) {
                                    dd = rs2.getString(1);
                                }
                            } catch (Exception e) {
                                System.out.println(e);
                            }
                            try {
                                stmt1 = con.createStatement();
                                String sql = "select * from payment where doctor_id='" + dd + "'";
                                System.out.println(sql);
                                ResultSet rs = stmt.executeQuery(sql);
                                while (rs.next()) {
                                    String s = rs.getString(13);
                                    String t = rs.getString(16);
                                    String jj = "Booked";
                                    String kk = "0";
                                   if((s.equals(jj)) && (t.equals(kk))){
                                       
                                   
                                    int idd = rs.getInt(1);%>
                    <tr>

<!--                        <td style="height: 50px;width:70px;"> <% out.println(rs.getString(1)); %> </td>-->
                        <td><% out.println(rs.getString(2)); %></td>
                        <td><% out.println(rs.getString(7)); %></td>
                        <td><% out.println(rs.getString(8)); %></td>
                        
 <td>     <a href="message1.jsp?idd=<%=idd %>"><u>Click here</u></a></td>
                    </tr>
                    <%
                                    System.out.println(sql);
                                }
}

                            } catch (Exception e) {
                                System.out.println(e);

                            }
                        } catch (Exception e) {
                            System.out.println(e);
                        }

                    %>
  </table>
            </div>

   <img src= "img/bg1.jpg">
</body>
<html>