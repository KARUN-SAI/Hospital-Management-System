

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
<% final String s=request.getAttribute("succ").toString() ;
session.setAttribute("b",s);%>
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
 
window.open("http://localhost:8080/Hospital_network/home.jsp?name="+name);


}

 function plans(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
        
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
  
window.open("http://localhost:8080/Tollgate/plans.jsp?name="+name);


}

 function billing(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
       
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';

window.open("http://localhost:8080/Hospital_network/bill.jsp?name="+name);


}function view(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
       
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';

window.open("http://localhost:8080/Hospital_network/doctor_patient.jsp?name="+name);


}
 function request(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
       
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
   
window.open("http://localhost:8080/Hospital_network/doctormsg.jsp?name="+name);


}
 function patient(){

<%
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
        
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
  
window.open("http://localhost:8080/Hospital_network/patient_details.jsp?name="+name);


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
     if(name2==null ){
      name2 = request.getParameter("name");
    }
String ss = (String) request.getAttribute("succ");

session.setAttribute("bb",s);

   
     %>
                 <div class="first" style="width:100%;height:45px;">
                     <h2 class="topnav-name fleft" title="name" >HOSPITAL NETWORK SYSTEM</h2>
      
                     <div class="dropdown fright">
                           <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/index.html';">Logout</button>
                          </div>
                           
                          
                            
                        
                          <div class="dropdown fright"><ul>
                                  <button class="dropbtn" onclick="view()">Patient list</button>
                                  
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
          
</body>

</html>


