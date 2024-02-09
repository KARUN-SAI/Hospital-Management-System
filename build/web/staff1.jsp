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
   
</body>
</html>