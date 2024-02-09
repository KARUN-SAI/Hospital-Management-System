

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
 <script>function msgfunction(){alert("Login successfully");}</script>
<body>
     
                             <ul>
            <li><a href="">HOSPITAL NETWORK SYSTEM</a></li>
          
  <li style="float:right"><a href="doctor_login1.jsp">Login</a></li>
  <li style="float:right"><a href="index.jsp">Home</a></li>
  
</ul>

<center>
   <div class="container" style="width:100%;height:100%;">

  <form name="Login Form" class="login-form"  method="post">
         
      <table> 
         <h1 style='color:black;'>Login Form</h1>
         <br>
      <tr>
        <td><label for="username">User Name:</label></td>
        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="username" placeholder="your Username" required="required"></td>
        
      </tr>
      <tr>
        <td><label for="password">Password:</label></td>
        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="password" name="password" placeholder="your Password" required="required"></td>
      </tr>
      

           <%   
               String username1,password1;
               Statement stmt=null,stmt1=null;
              Connection con;
               String J=null;
               try{
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
                stmt = con.createStatement();
                 stmt1 = con.createStatement();
}
    catch(Exception e){
        e.printStackTrace();
}
        System.out.println(request.getParameter("username"));
         username1 = request.getParameter("username");
                 password1 = request.getParameter("password");
                 System.out.println("username:"+username1);
                 System.out.println("password:"+password1);
                 session.setAttribute("name", username1);
                 
                 String sql="select username,password,doctor_id from doctor_details where username='"+username1+"'and password='"+password1+"'" ;
              
                 System.out.println(sql);
                ResultSet rs=stmt.executeQuery(sql);
             
            
                  if (rs.next()) {
                      System.out.println("Start");
                      J=rs.getString(1);
                      session.setAttribute("j", J);
                      
             response.sendRedirect("doctor1.jsp");
                     

                    } 
                   session.setAttribute("j", J);
                      System.out.println("After success Set Attributes");
               
                 
                %>
           
      <td>     
      <input type="submit" class="submit" value="Submit" onclick="msgfunction()"/>
      
      </td>
           
    </table>
            
    

  </form>
     
</div>

    </center>      <img src= "img/bg1.jpg">            
</body>

</html>


