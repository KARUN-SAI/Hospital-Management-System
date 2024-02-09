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
       <script>function msgfunction(){alert("Appoint cancelled successfully");}</script>
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

        <div class="dropdown fright">
            <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/index.jsp';">Logout</button>
        </div>



                <div class="dropdown fright">
            <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/account1.jsp';" >Payment</button>
        </div>
        <div class="dropdown fright">
            <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/msgpatient1.jsp';" >Message</button>
        </div>
        
         <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/patientbooking1.jsp';" >Appointments</button>
                       </div>
         <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/doctor_list1.jsp';" >Doctor's List</button>
                       </div>
    
                    
      </div>
        <br><br>          
                
   <div class="container1" style="width:100%;height:100%;position:absolute;">
                 
                   <table border="1" style="height:50px;width: 1000px;">
                       <br>
                        <h1 style='color:black;'>APPOINTMENTS</h1>
                        <br>
                        <tr>
                           
<!--                             <th style="height: auto;width:100px;">Booking ID </th>-->
                               <th>User name</th>
                               <th>Doctor Name</th>
                               <th>Specialist</th>
                                 <th>Date</th>
                                   <th>Timing</h>
                                     
                                 <th>Fee</th>
                             <th>Status</th>
                             <th>Payment</th>
                             <th>Action</th>
                            
    
                        </tr>
                      
                        <% 
                            String uu ;
                            String vv;
                            Connection con;
                            Statement stmt,stmt1;
                            try{
                    Class.forName("com.mysql.jdbc.Driver");
                      uu=session.getAttribute("l").toString();
vv=session.getAttribute("p").toString();
                
                    
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                      
                         String sql="select * from payment where username='"+vv+"'";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) { int id=rs.getInt(1);%>
                        <tr>
                           
<%--                     <td style="height: 50px;width:70px;"> <% out.println(rs.getString(1)); %> </td>--%>
                     <td><% out.println(rs.getString(2)); %></td>
                        <td><% out.println(rs.getString(4)); %></td>
                         <td><% out.println(rs.getString(6)); %></td>
                          <td><% out.println(rs.getString(7)); %></td>
                           <td><% out.println(rs.getString(8)); %></td>
                            <td><% out.println(rs.getString(9)); %></td> 
                            <td><% out.println(rs.getString(13)); %></td>
                            <td><% out.println(rs.getString(14)); %></td> 
                       
                        <td>     <a href="deleteappointment2.jsp?id=<%=id %>"><u>  
      <input type="submit" class="submit" value="Cancel" onclick="msgfunction()"/>
      
      </u></a></td>
                        </tr>
                        <%  

                      }
                        }
                            catch(Exception e){
                               System.out.println(e);
                        }
                   
                    %>
                 
       <tr>
          
      </tr>
            </table>
    
    
    
    
    
    
    </div>
        
        
    
    </div>
        
           <img src= "img/bg1.jpg">
    </body>
</html>