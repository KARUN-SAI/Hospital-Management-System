

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
<script>
    function editprofiles(){

<%
    
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
       
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
  // alert(name);
//window.open("Register.jsp");
window.open("http://localhost:8080/Hospital_network/home.jsp?name="+name");


}

 function plans(){

<%
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
  
window.open("http://localhost:8080/Tollgate/plans.jsp?name="+name");


}

 function billing(){
 <%
    name = (String) request.getAttribute("name");
     System.out.println("attribute"+name);
     if(name==null){
      name = request.getParameter("name");
    }

 
   
     %>

            var name = '<%=name%>';
   
window.open("http://localhost:8080/Hospital_network/bill.jsp?name="+name");


}function view(){

<%
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
   //alert(name);
//window.open("Register.jsp");
window.open("http://localhost:8080/Hospital_network/staffdoctor_list.jsp?name="+name");

//var name = "roseindia";
//window.location.replace("a.jsp?name="+name);
}
 function request(){

<%
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
   //alert(name);
//window.open("Register.jsp");
window.open("http://localhost:8080/Hospital_network/request.jsp?name="+name");

//var name = "roseindia";
//window.location.replace("a.jsp?name="+name);
}
 function patient(){

<%
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
   //alert(name);
//window.open("Register.jsp");
window.open("http://localhost:8080/Hospital_network/patient_details.jsp?name="+name");

//var name = "roseindia";
//window.location.replace("a.jsp?name="+name);
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
   name = (String) request.getAttribute("name");
     System.out.println("attribute"+name);
     if(name==null){
      name = request.getParameter("name");
    }

 /*   if(name2.isEmpty()){
      name2 = request.getParameter("name");
    }*/
   
     %>
                 <div class="first" style="width:100%;height:45px;">
                     <h2 class="topnav-name fleft" title="name" >HOSPITAL NETWORK SYSTEM</h2>
      
                     <div class="dropdown fright">
                           <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/index.html';">Logout</button>
                          </div>
                           
                          
                            
                        <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/request.jsp';">View Request</button>
                          </div>
                          <div class="dropdown fright"> <ul>
                                  <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/staffdoctor_list.jsp';">Doctor</button>
                                  
                          </div>
                     
                       <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/bill.jsp';" >Bill</button>
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
 name = (String) request.getAttribute("name");
System.out.println("name:"+name);
        %> 
    <% if(aSuccess=="Logged In Successfully"){ %>
    <script>
        alert("Logged In Successfully");
        //window.open("candidate_portal.jsp");
        </script><% } %>
<script> }</script>
     

</div>
          
</body>

</html>


