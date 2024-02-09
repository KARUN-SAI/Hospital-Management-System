

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
 String name;
%>

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
                 
                   <table border="1" style="height:50px;width: 1000px;">
                       <br>
                        <h1 style='color:black;'>DOCTORs LIST</h1>
                        <br>
                        <tr>
                           
                             <td style="height: auto;width:100px;">Doctor ID</td>
                           <td style="height: auto;width:100px;">Doctor Name</td>
                             <td>Gender </td>
                                  <td>Specialist</td>
                             
                                  
                                <td>Schedule</td>
                             
    
                        </tr>
                      
                        <%  try{
                    Class.forName("com.mysql.jdbc.Driver");
                
                    System.out.println("list:"+name);
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from doctor_details";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) 
{ int id=rs.getInt(1);%>
                        <tr>
                           
                     <td style="height: 50px;width:70px;"> <% out.println(rs.getInt(1)); %> </td>
                   
                        <td><% out.println(rs.getString(2)); %></td>
                        <td><% out.println(rs.getString(3)); %></td>
                        <td><%  out.println(rs.getString(7)); %></td>
                       
                        
                         
                         
                         <td style="height:auto;width:auto;">
                              <button id="accept" style="background-color:green;" value="<%  out.println(rs.getString(9)); %>" onclick="location.href='http://localhost:8080/Hospital_network/addschedule.jsp?name=<%=name%>&id=<%=id%>';">Add</button>
                            
                             <button id="delete" style="background-color:red;" value="<%  out.println(rs.getString(9)); %>" onclick="location.href='http://localhost:8080/Hospital_network/schedule.jsp?name=<%=name%>&id=<%=id%>';">View</button></td>
                 
                        
                        </tr>
                        <%  

                      }
                        }
                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    %>
                 
       <tr>
          <button id="back" onclick="back_funct()">Back</button>

      </tr>
            </table>
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


