
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
String noofstaff;%>

<!DOCTYPE html>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Plans</title>
</head>
 <script>
function back_funct(){
   
<% String name3 = (String) request.getParameter("name");
   System.out.println("jsname:"+name3);%>
           var name = '<%=name3%>';

window.open("http://localhost:8080/Hospital_network/Staff.jsp?name="+name);

}
function add_funct(){
   
<% String name4 = (String) request.getParameter("name");
   System.out.println("jsname:"+name4);%>
           var name = '<%=name3%>';

window.open("http://localhost:8080/Hospital_network/add_plan.jsp?name="+name);

}
function editcoffee(){
   
   

coffee_id=document.getElementById('edit').value;
alert(coffee_id);
window.open("http://localhost:8080/Hospital_network/edittoll.jsp?id="+coffee_id);

}

function deletecoffee(){
    coffee_id=document.getElementById('delete').value;

 var doIt=confirm('Do you want to delete the record?');
  if(doIt){
    
   window.open("http://localhost:8080/Hospital_network/deletetoll?id="+coffee_id);
    }
  else{

    }
   

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
table{
    font-size: 10px;
    
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
      <h2 class="fleft topnav-name" title="name" style="padding-right:10px !important;passing-left:10px !important;">HOSPITAL NETWORK SYSTEM</h2>
        <a class="fright f-item " href="http://localhost:8080/Hospital_network/index.html" target="_blank" title="login" style="padding-right:10px !important; padding-left:10px !important; color:white;"> Logout </a>
    
                 </div>
   <div class="container1" style="width:100%;height:100%;position:absolute;">
                 
                   <table border="1" style="height:50px;width: 1000px;">
                       <br>
                        <h1 style='color:black;'>DOCTOR's LIST</h1>
                        <br>
                        <tr>
                           
                             
                             <td> ID</td>
                              <td>Doctor Name</td>
                              <td> Gender</td>
                             <td>Specialist</td>
                             <td>Date</td>
                              <td>Timing</td>
                             <td>Fee</td>
                             <td>Action</td>
    
                        </tr>
                      
                        <%  try{
                    Class.forName("com.mysql.jdbc.Driver");
                
                    System.out.println("list:"+name2);
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from doctor_list";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) { int id=rs.getInt(1);%>
                        <tr>
                           
                     <td style="height: 50px;width:70px;"> <% out.println(rs.getString(1)); %> </td>
                     <td><% out.println(rs.getString(3)); %></td>
                        <td><% out.println(rs.getString(4)); %></td>
                        <td><% out.println(rs.getString(5)); %></td>
                        <td><%  out.println(rs.getString(6)); %></td>
                        <td><%  out.println(rs.getString(7)); %></td>
                         <td><%  out.println(rs.getString(8)); %></td>
                        <td>
                        <button id="delete" style="background-color:blue;" value="<%  out.println(rs.getString(1)); %>" onclick="location.href='http://localhost:8080/Hospital_network/deleteschedule?name=<%=name2%>&id=<%=id%>';">Delete</button></td>
                 
                        
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
        String name=  (String) request.getAttribute("name");%> 
    <% if(aSuccess=="Appointment Booked Successfully"){ %>
    <script>
        alert("Appointment Booked Successfully");
        
        </script><% }
 String aSuccess1=  (String) request.getAttribute("alertMsg"); %> 
    <% if(aSuccess=="Plan Details Deleted Successfully"){ %>
    <script>
        alert("Plan Details Deleted Successfully");
        
        </script><% }%>
<script> }</script>

</body>


</html>

