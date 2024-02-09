<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% ResultSet rs1;
String r=null;
String s=null;
String x=null,y=null,z=null,p=null,o=null,u=null,v=null,t1=null,t2=null,t3=null;

%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Login Form</title>
    </head>
    <script>
        
        function back_funct(){
           
       
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
     String name1 =null;
     name1 = (String) session.getAttribute("name");
        System.out.println("attribute"+name1);
        /* name1 = (String) request.getParameter("name");
         System.out.println("parameter"+name1);*/
   if(name1==null){
     response.sendRedirect("index.jsp");
    }%>

    <div class="first" style="width:100%;height:45px;">

        <div class="dropdown fright">
            <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/index.jsp';">Logout</button>
        </div>



      
                <div class="dropdown fright">
            <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/account1.jsp';" >Payment</button>
        </div>
        <div class="dropdown fright">
            <button class="dropbtn" onclick="location.href ='http://localhost:8080/Hospital_network/msgpatient1.jsp';" >Message</button>
        </div>
        
         <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/patientbooking1.jsp';" >Appointments</button>
                       </div>
         <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/doctor_list1.jsp';" >Doctor's List</button>
                       </div>
  
    
    </div>
       
        <center>
   <div class="container" style="width:100%;height:100%;position:absolute">
   
 <script type="text/javascript" src="js/fileselection.js"></script>

  <form name="buy_plan" class="registartion-form"  method="post">
      <table> 
         <h1 style='color:black;'>Payment</h1>
         
         
        <%
           
             int iid = Integer.parseInt(request.getParameter("id"));



    
           
           String name = (String)session.getAttribute("p");
         
         System.out.println(iid);
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
             Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
            Statement stmt2 = con1.createStatement();
             Statement stmt3 = con1.createStatement();
             System.out.println(iid);
             String query="select * from doctor_list where id='"+iid+"'";
             rs1 =stmt2.executeQuery(query ) ;
             
   
          while(rs1.next()){
            
            r=rs1.getString(3);
            System.out.println(r);
            s=rs1.getString(8);
            x=rs1.getString(2);
                    y=rs1.getString(4);
                    z=rs1.getString(5);
                            p=rs1.getString(6);
                            o=rs1.getString(7);
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
        <%
          }
          
          u=session.getAttribute("p").toString();
v=session.getAttribute("l").toString();

           %>
        
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
          <button id="back" onclick=" <%
           String account=null,amount=null,card=null,date=null,sp=null,di=null,un=null,dn=null,bank=null,ui=null,time=null;  try{
                 Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hospital_network","root","");
             Statement    stmt = con.createStatement();
            Statement stmt1 = con.createStatement();
                   amount = request.getParameter("amount");
                   if(amount!=null){
                      System.out.println("iiiiii"+amount);

                 bank =request.getParameter("bank");
                    System.out.println(amount);
          
                    System.out.println(amount);
                   account = request.getParameter("account");
                    System.out.println(amount);
                    card = request.getParameter("card"); System.out.println(card);
 un =session.getAttribute("p").toString();  System.out.println(un);
                   ui= session.getAttribute("l").toString(); System.out.println(ui);
                    dn = request.getParameter("dn"); System.out.println(dn);
                     di = request.getParameter("did"); System.out.println(di);
                     sp = request.getParameter("sp"); System.out.println(sp);
                    date = request.getParameter("date");System.out.println(date);
                  time =request.getParameter("time"); System.out.println(time);
                     System.out.println(amount);
                      String sql = "INSERT INTO payment(username,user_id,doctor_name,doctor_id,specialist,date,timing,amount,bankname,account,card,status,action,patient_condition,view_statues)values ('"+un+"','"+ui+"','"+dn+"','"+di+"','"+sp+"','"+date+"','"+time+"','"+amount+"','"+bank+"','"+account+"','"+card+"','"+"Booked"+"','"+"Paid"+"','"+"null"+"','"+"0"+"')";
                      System.out.println(sql);
                   stmt.executeUpdate(sql);
                   }
                
                    
                    

}
catch(Exception e){
System.out.println(e);
}

%><script> alert("Appointment Booked successfully")</script> Pay</button>
      </tr>
      
           
    </table>
      
     

  </form>
</div>
</center>
   <img src= "img/bg1.jpg">

    </body>
</html>