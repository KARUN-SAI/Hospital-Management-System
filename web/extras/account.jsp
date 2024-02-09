

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
<title>Edit Staff List</title>
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
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name1==null){
      name1 = request.getParameter("name");
    }%>
            var name = '<%=name1%>';


window.open("http://localhost:8080/Hospital_network/msgpatient.jsp?name="+name);


function back_funct(){
   
<% String name3 = (String) request.getParameter("name");
   System.out.println("jsname:"+name3);%>
           var name = '<%=name3%>';

window.open("http://localhost:8080/Hospital_network/patientside.jsp?name="+name);

}
function editcoffee(){
   
   

coffee_id=document.getElementById('edit').value;
alert(coffee_id);
window.open("http://localhost:8080/Hospital_network/editdoctor.jsp?id="+coffee_id);

}

function deletecoffee(){
    coffee_id=document.getElementById('delete').value;

 var doIt=confirm('Do you want to delete the record?');
  if(doIt){
    
   window.open("http://localhost:8080/Hospital_network/deletedoctor?id="+coffee_id);
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

</style>
<body>
     <%
    String name2 = (String) request.getAttribute("name");
     System.out.println("attribute"+name2);
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
                          
   <div class="container1" style="width:100%;height:100%;position:absolute;">
                 
                   <table border="1" style="height:50px;width: 1000px;">
                       <br>
                        <h1 style='color:black;'>PAYMENTS</h1>
                        <br>
                        <tr>
                           
                              <td style="height: auto;width:100px;">User Name</td>
                           <td style="height: auto;width:100px;">User Id</td>
                             <td>Doctor name</td>
                                  <td>Specialist</td>
                             
                             
                              <td>Date</td>
                                  <td>Timing</td>
                             <td>Amount</td>
                              <td>Status</td>
                                <td>Action</td>
                             
                             
                             
    
                        </tr>
                      
                        <%  try{
                    Class.forName("com.mysql.jdbc.Driver");
                
                    System.out.println("list:"+name2);
                    String name = request.getParameter("name");
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from where username='"+name+"'";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) { int id=rs.getInt(6);%>
                        <tr>
                           
                     <td style="height: 50px;width:70px;"> <% out.println(rs.getString(2)); %> </td>
                     <td><% out.println(rs.getString(3)); %></td>
                     <td><% out.println(rs.getString(7)); %></td>
                        <td><% out.println(rs.getString(4)); %></td>
                        <td><% out.println(rs.getString(5)); %></td>
                        <td><% out.println(rs.getString(6)); %></td>
                         <td><% out.println(rs.getString(8)); %></td>
                       
                        
                        </tr>
                        <%  

                      }
                        }
                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    %>
                 
     
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
    <% if(aSuccess=="Tollgate Details Updated Successfully"){ %>
    <script>
        alert("Tollgate Details Updated Successfully");
        
        </script><% }
 String aSuccess1=  (String) request.getAttribute("alertMsg"); %> 
    <% if(aSuccess=="Tollgate Details Deleted Successfully"){ %>
    <script>
        alert("Tollgate Details Deleted Successfully");
        
        </script><% }%>
<script> }</script>

</body>


</html>


