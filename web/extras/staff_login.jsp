
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

<body>
     
                             <ul>
            <li><a href="">HOSPITAL MANAGEMENT SYSTEM</a></li>
   
  <li style="float:right"><a href="Staff.jsp">Login</a></li>
  <li style="float:right"><a href="index.html">Home</a></li>
  
</ul>

<center>


  <form name="Login Form" class="login-form" action="staff_login" method="post">
         
      <table> 
         <h1 style='color:black;'>Login Form</h1>
         <br>
      <tr>
        <td><label for="username">User Name:</label></td>
        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="username" placeholder="your Username" required="required"></td>
        
      </tr>
      <tr>
        <td><label for="password">Password:</label></td>
        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="password" placeholder="your Password" required="required"></td>
      </tr>
      

         
           
      <tr>
        <td colspan="2"><input type="submit" class="submit" value="Submit" onclick="msgfunction()"/></td>
      
      </tr>
           
    </table>
            
    <script>
         function msgfunction(){ </script>
  <%
      
   String sAction = (String) request.getAttribute("error"); %> 
    <% if(sAction=="Invalid user or password"){ %>
    <script>
        alert("Invalid Username Or Password");
        
        </script><% } 
     String aSuccess=  (String) request.getAttribute("success"); %> 
    <% if(aSuccess=="Logged In Successfully"){ %>
    <script>
        alert("Logged In Successfully");
        //window.open("candidate_portal.jsp");
        </script><% } %>
<script> }</script>

  </form>
     
</div>

    </center>               
</body>

</html>


