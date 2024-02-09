<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sun.xml.ws.rx.rm.protocol.wsrm200702.SequenceAcknowledgementElement.Final"%>
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
 <script>function msgfunction(){alert("Message send successfully");}</script>
<style>
    input {
  background: lightgreen;
  padding: 12px 40px;
 border-radius: 8px;
 box-shadow: 2px 2px 2px 1px rgb(131, 131, 219) ;
 border: 1px solid gray;
 font-size: 20px;
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
            table{
                font-size: 10px;

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
                     <h2 class="topnav-name fleft" title="name" >HOSPITAL NETWORK SYSTEM</h2>
      
                      <div class="dropdown fright">
                           <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/index.jsp';">Logout</button>
                          </div>
                          
                            
                        
                          <div class="dropdown fright">
                          <button class="dropbtn" onclick="location.href='http://localhost:8080/Hospital_network/doctor_patient1.jsp';" >Patient List</button>
                       </div>
                     
                    
                          
                 </div>

    <div class="container1" style="width:100%;height:100%;position:absolute">
        
    <table >
                   
          <% 
              String doctorname,qualification;
              Statement stmt,stmt1;
              Connection con;
              
              try{
               String staff_id = request.getParameter("idd");
               
              
                    Class.forName("com.mysql.jdbc.Driver");
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from payment where id='"+staff_id+"' ";
                      
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) {%>
                        <tr>

                       
                        <% 
                           
                        doctorname=rs.getString(1);
                       
                         qualification=rs.getString(5);
                       System.out.println(doctorname);
                         System.out.println(qualification);
                       
                      
                        %>
         <tr>
       
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="f" value="<%=doctorname%>" id="staffname"  ></td>
      </tr>
      
     <tr>
       
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="ff"value="<%="1"%>"></td>
      </tr>
       
      <%
          

          
          %>
     
  
      
       <td >   <a href="message2.jsp?id=<%=doctorname %> ">  <u>  
      <input type="button" class="submit" value="Send message to next patients..."  onclick="msgfunction()"/>
      
      </u></a></td>
  
      
      <%  }
                        }
                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    %>
  </table>
            </div>
   <img src= "img/bg1.jpg">

</body>
<html>