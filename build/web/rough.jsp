

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
ResultSet rs1=null;
String vehicle;
String single; 
String returns;
String daily;
String monthlypass;
String r=null;
String s=null;
String x=null,y=null,z=null,p=null,o=null,u=null,v=null;
String tripcard;
String noofstaff;
int tollgate_id;

int id;%>

<!DOCTYPE html>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Buy Plans</title>
</head>
 <script>
function back_funct(){
   
        <% String name5 = (String) request.getParameter("name");
   System.out.println("jsname:"+name5);%>
           var name = '<%=name5%>';

window.open("http://localhost:8080/Hospital_network/doctor_list.jsp?name="+name);

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


</style>
<body>
      
                         

                      
          
    <div class="first" style="width:100%;height:45px;">
      <h2 class="fleft topnav-name" title="name" style="padding-right:10px !important;passing-left:10px !important;">HOSPITAL NETWORK SYSTEM</h2>
        <a class="fright f-item topnav-icons" href="http://localhost:8080/Hospital_network/index.html" target="_blank" title="login" style="padding-right:10px !important; padding-left:10px !important; color:white;"> Logout </a>
    
                 </div>
<center>
   <div class="container" style="width:100%;height:100%;position:absolute">
   
 <script type="text/javascript" src="js/fileselection.js"></script>

  <form name="buy_plan" class="registartion-form" action="pay" method="post">
      <table> 
         <h1 style='color:black;'>Payment</h1>
         
         
        <%
           
             int iid = Integer.parseInt(request.getParameter("id"));



       try{
           
           String name = request.getParameter("name");
         
         
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
             Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
            Statement stmt2 = con1.createStatement();
             Statement stmt3 = con1.createStatement();
             String query="select * from doctor_list where id="+iid;
             rs1 =stmt2.executeQuery(query ) ;
             
   
          while(rs1.next()){
            r=rs1.getString(3);
            s=rs1.getString(8);
            x=rs1.getString(2);
                    y=rs1.getString(4);
                    z=rs1.getString(5);
                            p=rs1.getString(6);
                            o=rs1.getString(7);
          }
          
          u=session.getAttribute("na").toString();
v=session.getAttribute("idp").toString();
           %>
        
         <tr>
        
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden"  name="from" id="from" value="<%=r%>" ></td> 
      
       
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="did" id="to" value="<%=x%>" >
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="dn" id="to" value="<%=r%>" ></td> 
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="g" id="to" value="<%=y%>" ></td> 
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="sp" id="to" value="<%=z%>"></td> 
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="date" id="to" value="<%=p%>" ></td> 
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="time" id="to" value="<%=o%>"></td> 
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="un" id="to" value="<%=u%>"></td> 
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="uid" id="to" value="<%=v%>"></td> 
      </tr>
       <tr>
          <td><label for="amount">Amount in Rs.: </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="amount" id="amount" value="<%=s%>" placeholder="Ex: 345" required="required"></td> 
      </tr>
       <tr>
          <td><label for="Bank Name">Bank Name: </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bank" id="bank" placeholder="SBI" required="required"></td> 
      </tr> 
      <tr>
          <td><label for="Account No">Account No: </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="account" id="account" placeholder="123456845126523" required="required"></td> 
      </tr> 
      <tr>
          <td><label for="Card No">Card No: </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="card" id="card" placeholder="256" required="required"></td> 
      </tr> 
      <tr>
          <input type="hidden" name="plan_id" />
          <input type="hidden" name="name" value="<%=name %>" />
      </tr>
     
     
      <tr>
        <td colspan="2"><input type="submit" class="submit" value="Pay" /></td>
      </tr>
      <tr>
          <button id="back" onclick="back_funct()">Back</button>
      </tr>
  
           
    </table>
      <%}
       
       catch(Exception ex){
           
   }%>
     
       <script>
         function msgfunction(){ </script>
  <%
      
   String sAction = (String) request.getAttribute("alertMsg"); %> 
    <% if(sAction=="In Progress, Not yet decide"){ %>
    <script>
        alert("In Progress, Not yet decide");
        
        </script><% } 
     String aSuccess=  (String) request.getAttribute("alertMsg"); %> 
    <% if(aSuccess=="Payment Details are Added Successfully"){ %>
    <script>
        alert("Appointment Booked Successfully");
        
        </script><% } %>
<script> }</script>

  </form>
</div>
</center>

<br>
 <footer class="main-footer">
        <p>Developed by <a href="" target="_blank">  </a></p>
    </footer>
</body>

</html>


-----------------------
doctor list




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
  %>

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
  <% String name= (String) request.getAttribute("name");
   System.out.println("jsname:"+name);%>
           var name = '<%=name%>';

window.open("http://localhost:8080/Hospital_network/patientside.jsp?name="+name);

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
     String name2 = (String) request.getAttribute("name");
     System.out.println("attribute first  "+name2);
     request.setAttribute("name", name2);
     if(name2==null){
      name2 = request.getParameter("name");
    }

     String name1 =null;
     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
        
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
  
window.open("http://localhost:8080/Hospital_network/patient_profile.jsp?name="+name);


}
function back_funct(){
   
      <% String name3 = (String) request.getParameter("name");
   System.out.println("jsname:"+name3);%>
           var name = '<%=name3%>';

window.open("http://localhost:8080/Hospital_network/patientside.jsp?name="+name);

}
 function doctor(){

<%
     name2 = (String) request.getAttribute("name");
     System.out.println("attribute first  "+name2);
     request.setAttribute("name", name2);
     if(name2==null){
      name2 = request.getParameter("name");
    }
 
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
    name2 = (String) request.getAttribute("name");
     System.out.println("attribute first  "+name2);
     request.setAttribute("name", name2);
     if(name2==null){
      name2 = request.getParameter("name");
    }

     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
        
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';

window.open("http://localhost:8080/Hospital_network/msgpatient.jsp?name="+name);


}
function booking(){

<%
      name2 = (String) request.getAttribute("name");
     System.out.println("attribute first  "+name2);
     request.setAttribute("name", name2);
     if(name2==null){
      name2 = request.getParameter("name");
    }
 %>
            var name = '<%=name2%>';
  
window.open("http://localhost:8080/Hospital_network/patientbooking.jsp?name="+name);

//var name = "roseindia";
//window.location.replace("a.jsp?name="+name);
}
 function payment(){

<%
     name2 = (String) request.getAttribute("name");
     System.out.println("attribute first  "+name2);
     request.setAttribute("name", name2);
     if(name2==null){
      name2 = request.getParameter("name");
    }

     name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
  // alert(name);
//window.open("Register.jsp");
window.open("http://localhost:8080/Hospital_network/account.jsp?name="+name);

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
    name2 = (String) request.getAttribute("name");
     System.out.println("attribute first  "+name2);
     request.setAttribute("name", name2);
     if(name2==null){
      name2 = request.getParameter("name");
    }

 /*   if(name2.isEmpty()){
      name2 = request.getParameter("name");
    }*/
   
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
String pid = (String) request.getAttribute("pid");
session.setAttribute("na",name);
session.setAttribute("idp",pid);
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



----------------------------<%-- 
    Document   : Register
    Created on : Oct 21, 2022, 12:29:53 PM
    Author     : CMP
--%>
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
String staffname;
String username; 
String doctorname;
String email;
String password;
String gender;
String address;
String qualification;
String phone;
String mobile,sp;
String noofstaff;
String sid;
int tollgate_id;
int id;%>


<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Edit Tollgate</title>
</head>
 <script>
function back_funct(){
   
<%
    String name1 = (String) request.getAttribute("name");
        System.out.println("attribute"+name1);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';
//window.open("Register.jsp");
window.open("http://localhost:8080/Hospital_network/staffdoctor_list.jsp?name="+name);
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


</style>
<body>
    
                         

                      
          
    <div class="first" style="width:100%;height:45px;">
      <h2 class="fleft topnav-name" title="name" style="padding-right:10px !important;passing-left:10px !important;">HOSPITAL NETWORK SYSTEM</h2>
        <a class="fright f-item topnav-icons" href="http://localhost:8080/Hospital_network/index.html" target="_blank" title="login" style="padding-right:10px !important; padding-left:10px !important; color:white;"> Logout </a>
    
                 </div>
<center>
   <div class="container" style="width:100%;height:100%;position:absolute">
   
 <script type="text/javascript" src="js/fileselection.js"></script>

  <form name="editstaff" class="registartion-form" action="addschedule" method="post">
      <table> 
         <h1 style='color:black;'>APPOINTMENT</h1>
          <%  try{
               String staff_id = request.getParameter("id");
               
              
                    Class.forName("com.mysql.jdbc.Driver");
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from doctor_details where doctor_id='"+staff_id+"' ";
                      // System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) {%>
                        <tr>

                       
                        <% 
                          sid=rs.getString(1);
                        doctorname=rs.getString(2);
                        gender=rs.getString(3);
                        phone=rs.getString(7);
                         
                      
                        %>
         <tr>
        <td><label for="hospital">Doctor Id</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="did" value="<%=sid%>" id="staffname" placeholder="John" required="required"></td>
      </tr>
      <tr>
        <td><label for="hospital">Doctor Name</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="dname" id="staffname"value="<%=doctorname%>"placeholder="Male/Female" required="required"></td>
      </tr>
      <tr>
        <td><label for="hospital">Gender</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="gender"value="<%=gender%>" id="staffname"  required="required"></td>
      </tr>
      <tr>
        <td><label for="hospital">Specialist</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sp" value="<%=phone%>"id="staffname"  required="required"></td>
      </tr>
      <tr>
        <td><label for="hospital">Date</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="date" id="staffname" placeholder="Address" required="required"></td>
      </tr>
      <tr>
        <td><label for="hospital">Timing</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="time" id="staffname" placeholder="Address" required="required"></td>
      </tr>
      <tr>
        <td><label for="hospital">Fee</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="fee" id="staffname" placeholder="Address" required="required"></td>
      </tr>
    
  
      
     
  
      <tr>
        <td colspan="2"><input type="submit" class="submit" value="ADD" /></td>
        <input type="hidden" name="staff_id" value="<%=staff_id %>" /></td>
      </tr>
      <tr>
          <button id="back" onclick="back_funct()">Back</button>
      </tr>
    <%  }
                        }
                            catch(Exception e){
                               System.out.println(e);
                        }
                   
                    %>
           
    </table>
       <script>
         function msgfunction(){ </script>
  <%
      
   String sAction = (String) request.getAttribute("alertMsg"); %> 
    <% if(sAction=="In Progress, Not yet decide"){ %>
    <script>
        alert("In Progress, Not yet decide");
        
        </script><% } 
     String aSuccess=  (String) request.getAttribute("alertMsg"); %> 
    <% if(aSuccess=="Doctor Details Updated Successfully"){ %>
    <script>
        alert("Updated Successfully!");
        
        </script><% } %>
<script> }</script>

  </form>
</div>
</center>

<br>
 <footer class="main-footer">
        <p>Developed by <a href="" target="_blank">  </a></p>
    </footer>
</body>

</html>


