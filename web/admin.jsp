

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
            var name = 'admin';

window.open("http://localhost:8080/Hospital_network/editprofiles.jsp?name="+name);


}function apt(){
 

window.open("http://localhost:8080/Hospital_network/apt.jsp?name="+name);


}

 function bill(){
 

window.open("http://localhost:8080/Hospital_network/billadmin.jsp?name="+name);


}
function patient(){
 

window.open("http://localhost:8080/Hospital_network/patientdetail.jsp?name="+name);


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
    response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setDateHeader("Expires", 0); //prevents caching at the proxy server

    
        
    String name2 = (String) session.getAttribute("name");
     System.out.println("attribute"+name2);
     if(name2==null){
      name2 = request.getParameter("name");
      response.sendRedirect("index.jsp");
    }

 /*   if(name2.isEmpty()){
      name2 = request.getParameter("name");
    }*/
   
     %>
     
                 <div class="first" style="width:100%;height:45px;">
                   
      
                     <div class="dropdown fright">
                           <button class="dropbtn" onclick="location.href='index.jsp';">Logout</button>
                          </div>
                     
                     <div class="dropdown fright">
                           <button class="dropbtn" onclick="editprofiles()">Edit Profile</button>
                          </div>
                     <div class="dropdown fright">
                           <button class="dropbtn" onclick="bill()">Bill</button>
                          </div>
                      <div class="dropdown fright">
                           <button class="dropbtn" onclick="apt()">Appointment</button>
                          </div>
                        <div class="dropdown fright">
                          <button class="dropbtn" onclick="patient()">Patient</button>
                          </div>
                      <div class="dropdown fright">
                            <button class="dropbtn">Worker</button>
                        <div class="dropdown-content">
                          <a href="spatientregister.jsp">Add </a>
                          <a href="viewworker.jsp?name=<%=name2%>">View</a>
                          <!-- <a href="#">Delete Coffee</a>-->
                           </div>
                            </div>
                      <div class="dropdown  fright">
                          <button class="dropbtn">Staff</button>
                        <div class="dropdown-content">
                           
                          <a href="add_staff.jsp">Add Staff</a>
                          <a href="editstaff_list.jsp">Update/Delete Staff </a>
                        </div>
                      </div>
                          
                          <div class="dropdown fright">
                            <button class="dropbtn">Doctor</button>
                        <div class="dropdown-content">
                          <a href="add_doctor.jsp">Add Doctor</a>
                          <a href="editdoctor_list.jsp?name=<%=name2%>">Update/Delete Doctor</a>
                          <!-- <a href="#">Delete Coffee</a>-->
                           </div>
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
        </script><% }
if(aSuccess=="Profile Updated Successfully"){%>
<script>
        alert("Profile Updated Successfully");
        //window.open("candidate_portal.jsp");
        </script> <%}%>
<script> }</script>
     

</div>
         <img src= "img/bg1.jpg">    
</body>

</html>


