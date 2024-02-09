
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
String username=null;
String password=null; 
String gender=null;
String age=null;
String phone=null;
String address=null;
String nname=null;

%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Edit Profile</title>
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

;
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
function back_funct(){
   
      <% String name3 = (String) request.getParameter("name");
   System.out.println("jsname:"+name3);%>
           var name = '<%=name3%>';

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
<center>
   <div class="container" style="width:100%;height:100%;position:absolute">
   
 <script type="text/javascript" src="js/fileselection.js"></script>

  <form name="editprofile" class="registartion-form" action="editpatientprofile" method="post">
      <table> 
         <h1 style='color:black;'>Edit Profile</h1>
          <%  try{
               String name = request.getParameter("name");
               System.out.println("editcoffee:"+name);
                    Class.forName("com.mysql.jdbc.Driver");
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         //String sql="select admin_name,user_name,email_id,password from admin where user_name='"+name+"' ";
                         String sql="select * from patient_details where username='"+name+"' ";
                      // System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) {%>
                        <tr>

                       
                        <% 
                           
                        nname=rs.getString(2);
                        gender=rs.getString(3);
                        age=rs.getString(4);
                        phone=rs.getString(5);
                        address=rs.getString(6);
                         username=rs.getString(7);
                        password=rs.getString(8);
                     
                       
                        %> <%  }
                        }
                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    %>
                        
        <td><label for="name">Name:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" value="<%=nname%>"id="name" placeholder="your name" required="required"></td>
       <tr>
        <td><label for="gender">Gender:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Male: <input type="radio" name="gender" value="male" required="required">
          Female: <input type="radio" name="gender" value="female" required="required">
      </tr>
        <tr>
        <td><label for="name">Age: </label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"value="<%=age%>" name="age" id="name" placeholder="your age" required="required"></td>
      </tr>
        <tr>
        <td><label for="name">Phone :</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=phone%>"name="phone" id="name" placeholder="your phone number" required="required"></td>
      </tr>
        <tr>
        <td><label for="name">Address:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"value="<%=address%>" name="address" id="name" placeholder="your Address" required="required"></td>
      </tr>
      <tr>
        <td><label for="uname">User Name</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username"value="<%=username%>" id="uname" placeholder="your User Name" required="required"></td>
      </tr>
     
      <tr>
        <td><label for="password">Password:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" value="<%=password%>"name="password" id="password" placeholder="your Password" required="required">
           
          
      </tr>
     
      
  
     
      
     
  
      <tr>
        <td colspan="2"><input type="submit" class="submit" value="Edit" /></td>
      </tr>
      <tr>
         
      </tr>
   
           
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
    <% if(aSuccess=="Coffee Details Added Successfully"){ %>
    <script>
        alert("Coffee Details Added Successfully");
        
        </script><% } %>
<script> }</script>

  </form>
</div>
</center>

<br>

</body>

</html>


