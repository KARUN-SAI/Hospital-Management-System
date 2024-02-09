
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
String username;
String password; 
String email_id;
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
function back_funct(){
   
      <% String name3 = (String) request.getParameter("name");
   System.out.println("jsname:"+name3);%>
           var name = '<%=name3%>';

window.open("http://localhost:8080/Hospital_network/admin.jsp?name="+name);

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
    response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setDateHeader("Expires", 0); //prevents caching at the proxy server

    
        
    String name2 = (String) session.getAttribute("name");
     
     if(name2==null){
     
      response.sendRedirect("index.jsp");
    }

 /*   if(name2.isEmpty()){
      name2 = request.getParameter("name");
    }*/
   
     %>
    
                         

                      
          
    <div class="first" style="width:100%;height:45px;">
      <h2 class="fleft topnav-name" title="name" style="padding-right:10px !important;passing-left:10px !important;">HOSPITAL NETWORK SYSTEM</h2>
        <a class="fright f-item topnav-icons" href="http://localhost:8080/Hospital_network/index.jsp" title="login" style="padding-right:10px !important; padding-left:10px !important; color:white;"> Logout </a>
    
                 </div>
<center>
   <div class="container" style="width:100%;height:100%;position:absolute">
   
 <script type="text/javascript" src="js/fileselection.js"></script>

  <form name="editprofile" class="registartion-form" action="editprofile" method="post">
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
                         String sql="select admin_name,user_name,email_id,password from admin where user_name='"+name+"' ";
                         String sql1="select name,username,password,gender from register_details where username='"+name+"' ";
                      // System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) {%>
                        <tr>

                       
                        <% 
                           
                        name=rs.getString(1);
                        username=rs.getString(2);
                         email_id=rs.getString(3);
                        password=rs.getString(4);
                       
                       
                        %>
      <tr>
        <td><label for="name">Name:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" readonly id="employeename" placeholder="Name" required="required" value="<%=name%>"></td>
      </tr>
      <tr>
        <td><label for="username">User Name:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username" id="username" placeholder="username" required="required" value="<%=username%>"></td>
      </tr>
      <tr>
        <td><label for="email">Email Id:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" id="email" placeholder="email" required="required" value="<%=email_id%>"></td> 
      </tr>
        <tr>
        <td><label for="password">Password:</label></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" id="password" required="required" value="<%=password%>"></td> 
      </tr>
     
      
     
  
      <tr>
        <td colspan="2"><input type="submit" class="submit" value="Edit" /></td>
      </tr>
      <tr>
          <button id="back" onclick="back_funct()">Back</button>
      </tr>
    <%  }
                        }
                            catch(Exception e){
                                e.printStackTrace();
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
    <% if(aSuccess=="Profile Updated Successfully"){ %>
    <script>
        alert("Profile Updated Successfully");
        
        </script><% } %>
<script> }</script>

  </form>
</div>
</center>

<br>
   <img src= "img/bg1.jpg">
</body>

</html>


