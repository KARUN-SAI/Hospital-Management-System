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
<% String name;%>
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
    margin-top:6px;
    margin-left: 20px;
    padding-right:50px;
}
.fright{
    float:right !important;
   text-align:left;
    margin: 0px 20px;
    display:inline-block; 
    border-radius: 2px;
   font-weight: bold;
   text-transform: uppercase;
     outline:0px;
     border:none;
      margin-top:6px;
     
}
f-item{
    display:block;
    border:none;
    outline:0px;
}
.topnav-name{
    position:relative;
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
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/request1.jsp';">View Request</button>
                          </div>
                          <div class="dropdown fright"> <ul>
                                  <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/staffdoctor_list1.jsp';">Doctor</button>
                                  
                          </div>
                     
                       <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/bill1.jsp';" >Bill</button>
                       </div>
                         
                          
                 </div>
        <div class="container1" style="width:100%;height:100%;position:absolute">
             <table border="1" style="height:50px;width: 1000px;">
                       <br>
                        <h1 style='color:black;'>BILL LIST</h1>
                        <br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        <br></br>
                        
                        <tr>
                           
                             <th style="height: auto;width:100px;">ID </th>
                               <th>User name</th>
<!--                               <th>User Id</th>-->
                                 <th>Date</th>
                                   <th>Timing</th>
                                     
                                 <th>Fee</th>
                             <th>Status</th>
                            
    
                        </tr>
                      
                        <%  
                            Connection con; Statement stmt,stmt1;
                            try{
                    Class.forName("com.mysql.jdbc.Driver");
                
                    
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from payment";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) { int id=rs.getInt(1);%>
                        <tr>
                           
                     <td style="height: 50px;width:70px;"> <% out.println(rs.getString(1)); %> </td>
                     <td><% out.println(rs.getString(2)); %></td>
<!--                        <td><% out.println(rs.getString(3)); %></td>-->
                         <td><% out.println(rs.getString(7)); %></td>
                          <td><% out.println(rs.getString(8)); %></td>
                           <td><% out.println(rs.getString(9)); %></td>
                            <td><% out.println(rs.getString(14)); %></td> 
                           
                       
                        
                        </tr>
                        <%  

                      }
                        }
                            catch(Exception e){
                               System.out.println(e);
                        }
                   
                    %>
                 
     
            </table>
   </div>
                    
   <img src= "img/bg1.jpg">
</body>
</html>