
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
<script>
    function editprofiles(){

<%
     String name1 =null;
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
       
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
  
window.open("http://localhost:8080/Hospital_network/patient_profile.jsp?name="+name);


}

 function payment(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
        
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
 
window.open("http://localhost:8080/Hospital_network/account.jsp?name="+name);


}
function booking(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
      
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
 
window.open("http://localhost:8080/Hospital_network/patientbooking.jsp?name="+name);


}
function doctor(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
       
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
  
window.open("http://localhost:8080/Hospital_network/doctor_list.jsp?name="+name);


}


 function message(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
      
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
 
window.open("http://localhost:8080/Hospital_network/msgpatient.jsp?name="+name);


}
</script>
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
    String name2 = (String) request.getAttribute("name");
     System.out.println("attribute"+name2);
     if(name2==null){
      name2 = request.getParameter("name");
    }


     %>
     
                 <div class="first" style="width:100%;height:45px;">
                    
      
                     <div class="dropdown fright">
                           <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/index.html';">Logout</button>
                          </div>
                     
                     <div class="dropdown fright">
                           <button class="dropbtn" onclick="editprofiles()">Edit Profiles</button>
                          </div>
                     
                     <div class="dropdown fright">
                          <button class="dropbtn" onclick="payment()">Payment Details</button>
                          </div>
                     <div class="dropdown fright">
                          <button class="dropbtn" onclick="message()">Message</button>
                          </div>
                      <div class="dropdown fright">
                          <button class="dropbtn" onclick="booking()">Appointments</button>
                          </div>
                     
                        <div class="dropdown fright"> 
                          <button class="dropbtn" onclick="doctor()">Doctor List</button>
                          </div>
                          
                          
                 </div>

    <div class="container1" style="width:100%;height:100%;position:absolute">
         <script>
         function msgfunction(){ </script>
  <%
      
   String sAction = (String) request.getAttribute("error"); %> 
    <% if(sAction=="Invalid user or password"){ %>
    <script>
        alert("Invalid Username Or Password");
        
        </script><% } 
     String aSuccess=  (String) request.getAttribute("success");
String name = (String) request.getAttribute("name");
System.out.println("name:"+name);
        %> 
    <% if(aSuccess=="Logged In Successfully"){ %>
    <script>
        alert("Logged In Successfully");
        //window.open("candidate_portal.jsp");
        </script><% } %>
<script> }</script>
     

</div>
