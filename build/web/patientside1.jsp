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
        
        
        
        
           <img src= "img/bg1.jpg">
        
    </body>
</html>