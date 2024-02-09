
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
             System.out.println(iid);
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
          System.out.println(ex);   }%>
     
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
