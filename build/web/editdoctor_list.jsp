

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
<title>Edit Staff List</title>
</head>
 <script>
function back_funct(){
   
<% String name3 = (String) request.getParameter("name");
   System.out.println("jsname:"+name3);%>
           var name = '<%=name3%>';

window.open("http://localhost:8080/Hospital_network/admin.jsp?name="+name);

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
    response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
    response.setHeader("Pragma", "no-cache"); //HTTP 1.0
    response.setDateHeader("Expires", 0); //prevents caching at the proxy server

    
        
    String name2 = (String) session.getAttribute("name");
     System.out.println("attribute"+name2);
     if(name2==null){
      name2 = request.getParameter("name");
      response.sendRedirect("index.jsp");
    }

 /*   if(name2.isEmpty()){
      name2 = request.getParameter("name");
    }*/
   
     %>
          
    <div class="first" style="width:100%;height:45px;">
      <h2 class="fleft topnav-name" title="name" style="padding-right:10px !important;passing-left:10px !important;">HOSPITAL NETWORK SYSTEM</h2>
        <a class="fright f-item " href="http://localhost:8080/Hospital_network/index.jsp" target="_blank" title="login" style="padding-right:10px !important; padding-left:10px !important; color:white;"> Logout </a>
    
                 </div>
   <div class="container1" style="width:100%;height:100%;position:absolute;">
                 
                   <table border="1" style="height:50px;width: 1000px;">
                       <br>
                        <h1 style='color:black;'>DOCTOR LIST</h1>
                        <br>
                        <tr>
                           
                             <th style="height: auto;width:100px;">Doctor Name</th>
                               <th>Gender</th>
                               <th>Phone</th>
                                 <th>Address</th>
                                   <th>Qualification</th>
                                     <th>Specialist</th>
                                 <th>User Name</th>
                             <th>Email Id</th>
                             <th>Password</th>
                             
                             <th>Action</th>
    
                        </tr>
                      
                        <%  try{
                    Class.forName("com.mysql.jdbc.Driver");
                
                    System.out.println("list:"+name2);
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from doctor_details";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) { int id=rs.getInt(1);%>
                        <tr>
                           
                     <td style="height: 50px;width:70px;"> <% out.println(rs.getString(2)); %> </td>
                     <td><% out.println(rs.getString(3)); %></td>
                        <td><% out.println(rs.getString(4)); %></td>
                         <td><% out.println(rs.getString(5)); %></td>
                          <td><% out.println(rs.getString(6)); %></td>
                           <td><% out.println(rs.getString(7)); %></td>
                            <td><% out.println(rs.getString(8)); %></td> 
                            <td><% out.println(rs.getString(9)); %></td>
                             <td><% out.println(rs.getString(10)); %></td>
                            
                          
                      
                        
                       
                        <td><button id="edit" value="<%  out.println(rs.getString(6)); %>" onclick="location.href='http://localhost:8080/Hospital_network/editdoctor.jsp?name=<%=name2%>&id=<%=id%>';">Edit</button>
                        <button id="delete" value="<%  out.println(rs.getString(6)); %>" onclick="location.href='http://localhost:8080/Hospital_network/deletedoctor?name=<%=name2%>&id=<%=id%>';">Delete</button></td>
                       
                        
                        </tr>
                        <%  

                      }
                        }
                            catch(Exception e){
                               System.out.println(e);
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
    <% if(aSuccess=="Doctor Details Updated Successfully"){ %>
    <script>
        alert("Doctor Details Updated Successfully");
        
        </script><% }
 String aSuccess1=  (String) request.getAttribute("alertMsg"); %> 
    <% if(aSuccess=="Doctor Details Deleted Successfully"){ %>
    <script>
        alert("Doctor Details Deleted Successfully");
        
        </script><% }%>
<script> }</script>
   <img src= "img/bg1.jpg">
</body>


</html>


