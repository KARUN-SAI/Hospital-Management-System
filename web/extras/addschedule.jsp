

<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Connection con;
Statement stmt;
Statement stmt1;
String tollgatename;
String location; 
String address;
String country;
String mobile;
String noofstaff;

String staffname;
String username; 
String doctorname;
String email;
String password;
String gender;

String qualification;
String phone;
String name;
String sid;%>

<!DOCTYPE html>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Toll Pass Details</title>
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
  
window.open("http://localhost:8080/Hospital_network/home.jsp?name="+name");


}

 function plans(){

<%
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
       
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
       
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
  
window.open("http://localhost:8080/Hospital_network/staffdoctor_list.jsp?name="+name");



}
 function request(){

<%
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
       
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
   
window.open("http://localhost:8080/Hospital_network/request.jsp?name="+name");


}
 function patient(){

<%
     name = (String) request.getAttribute("name");
        System.out.println("attribute"+name);
       
   if(name==null){
      name = request.getParameter("name");
    }%>
            var name = '<%=name%>';
  
window.open("http://localhost:8080/Hospital_network/patient_details.jsp?name="+name");


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

   <div class="container1" style="width:100%;height:100%;position:absolute;">
                  <form name="add_staff" class="registartion-form" action="addschedule" method="post">
     
                   <table border="1" style="height:50px;width: 1000px;">
                       <br>
                        <h1 style='color:black;'>DOCTORs LIST</h1>
                        <br>
                       
                      
                        <%  try{
                           String idd=request.getParameter("id").toString();
                    Class.forName("com.mysql.jdbc.Driver");
                
                    System.out.println("list:"+name);
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from doctor_details where doctor_id='"+idd+"'";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) 
{ int id=rs.getInt(1);%>
                        <tr>
                           
                   
                   
                        <tr>  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="did" id="to" value="<% out.println(rs.getString(1)); %>"></td></tr>
                        <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="dname" id="to" value="<% out.println(rs.getString(2)); %>"></td></tr>
                        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="gender" id="to" value="<%  out.println(rs.getString(3)); %>"></td><tr>
                        <tr> <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="sp" id="to" value="<%  out.println(rs.getString(7)); %>"></td><tr>
                       <tr>
          <td><label for="amount">Date </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="date" id="amount" value="" placeholder="Ex: 345" required="required"></td> 
      </tr>
      <tr>
          <td><label for="amount">Timing: </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="timing" id="amount" value=""  required="required"></td> 
      </tr>
      <tr>
          <td><label for="amount">Fee: </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="fee" id="amount" value=""  required="required"></td> 
      </tr>
                        
                         
                         
                         <td style="height:auto;width:auto;">
                              <button id="accept" style="background-color:green;" value="<%  out.println(rs.getString(9)); %>" onclick="location.href='http://localhost:8080/Hospital_network/addschedulename=<%=name%>&id=<%=id%>';">Add</button>
                           </td>
                 
                        
                        </tr>
                        <%  

                      }                        }

                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    %>
                 
       <tr>
          <button id="back" onclick="back_funct()">Back</button>

      </tr>
                   </table></form>
   </div>
                    

 <script type="text/javascript" src="js/fileselection.js"></script>

       <script>
         function msgfunction(){ </script>
  <%
      
   String sAction = (String) request.getAttribute("alertMsg"); %> 
    <% if(sAction=="In Progress, Not yet decide"){ %>
    <script>
        alert("In Progress, Not yet decide");
        
        </script><% } 
     String aSuccess=  (String) request.getAttribute("alertMsg"); 
       name=  (String) request.getAttribute("name");%> 
    <% if(aSuccess=="Plan Details Updated Successfully"){ %>
    <script>
        alert("Plan Details Updated Successfully");
        
        </script><% }
 String aSuccess1=  (String) request.getAttribute("alertMsg"); %> 
    <% if(aSuccess=="Appointment Rejected Successfully"){ %>
    <script>
        alert("Appointment Rejected Successfully");
        
        </script><% }%>
<script> }</script>

</body>


</html>


