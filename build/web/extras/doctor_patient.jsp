

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
        String did = null;
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
            function back_funct() {
  <% String name41 = (String) request.getParameter("name");
                System.out.println("jsname:" + name41);%>
                var name = '<%=name41%>';
               
                window.open("http://localhost:8080/Hospital_network/doctor.jsp?name=" + name);
             
            }
            function add_funct() {

            <% String name4 = (String) request.getParameter("name");
                System.out.println("jsname:" + name4);%>
                var name = '<%=name4%>';
              
                window.open("http://localhost:8080/Hospital_network/add_plan.jsp?name=" + name);
                
            }
            function editcoffee() {


                
                coffee_id = document.getElementById('edit').value;
                alert(coffee_id);
                window.open("http://localhost:8080/Hospital_network/edittoll.jsp?id=" + coffee_id);
                
            }

            function deletecoffee() {
                coffee_id = document.getElementById('delete').value;

                var doIt = confirm('Do you want to delete the record?');
                if (doIt) {

                    window.open("http://localhost:8080/Hospital_network/deletetoll?id=" + coffee_id);
                } else {

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
        <body>
            <%
                String name2 = (String) request.getAttribute("name");
                System.out.println("attribute bbbbmmb" + name2);
                if (name2 == null) {
                    name2 = request.getParameter("name");
                }

              

            %>

            <div class="first" style="width:100%;height:45px;">
                <h2 class="fleft topnav-name" title="name" style="padding-right:10px !important;passing-left:10px !important;">HOSPITAL NETWORK SYSTEM</h2>
                <a class="fright f-item " href="http://localhost:8080/Hospital_network/index.html" target="_blank" title="login" style="padding-right:10px !important; padding-left:10px !important; color:white;"> Logout </a>

            </div>
            <div class="container1" style="width:100%;height:100%;position:absolute;">

                <table border="1" style="height:50px;width: 1000px;">
                    <br>
                    <h1 style='color:black;'>APPOINTMENS</h1>
                    <br>
                    <tr>

                        <td style="height: auto;width:100px;">Booking Id </td>
                        <td>Patient Name</td>
                        <td>Date</td>
                        <td>Timing</td>

                        <td>Action</td>

                    </tr>

                    <%  try {
                            String dd = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            String didd = (String) request.getAttribute("succ");
                            System.out.println("list:" + name2);
                            System.out.println("Driver Start");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                            System.out.println("Getconnection Start");
                            stmt = con.createStatement();
                            try {
                                String sql4 = "select * from doctor_details where username='" + name2 + "'";
                                System.out.println(sql4);
                                ResultSet rs2 = stmt.executeQuery(sql4);
                                while (rs2.next()) {
                                    dd = rs2.getString(1);
                                }
                            } catch (Exception e) {
                                System.out.println(e);
                            }
                            try {
                                stmt1 = con.createStatement();
                                String sql = "select * from payment where doctor_id='" + dd + "'";
                                System.out.println(sql);
                                ResultSet rs = stmt.executeQuery(sql);
                                while (rs.next()) {
                                    String s = rs.getString(13);
                                    String t = rs.getString(16);
                                    String jj = "Booked";
                                    String kk = "0";
                                   if((s.equals(jj)) && (t.equals(kk))){
                                       
                                   
                                    int id = rs.getInt(1);%>
                    <tr>

                        <td style="height: 50px;width:70px;"> <% out.println(rs.getString(1)); %> </td>
                        <td><% out.println(rs.getString(2)); %></td>
                        <td><% out.println(rs.getString(7)); %></td>
                        <td><% out.println(rs.getString(8)); %></td>

                        <td>
                            <button id="delete" style="background-color:blue;" value="<%  out.println(rs.getString(1));%>" onclick="location.href = 'http://localhost:8080/Hospital_network/message.jsp?name=<%=name2%>&id=<%=id%>';">Viewed</button></td>


                    </tr>
                    <%
                                    System.out.println(sql);
                                }
}

                            } catch (Exception e) {
                                System.out.println(e);

                            }
                        } catch (Exception e) {
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
                        function msgfunction() {</script>
                <%      String sAction = (String) request.getAttribute("alertMsg"); %> 
                <% if (sAction == "In Progress, Not yet decide") { %>
            <script>
                    alert("In Progress, Not yet decide");

            </script><% }
                request.getAttribute("alertMsg");
                request.getAttribute("id");
                String aSuccess = (String) request.getAttribute("alertMsg");
                String name = (String) request.getAttribute("name");%> 
            <% if (aSuccess == "Plan Details Updated Successfully") { %>
            <script>
                    alert("Plan Details Updated Successfully");

            </script><% }
                String aSuccess1 = (String) request.getAttribute("alertMsg"); %> 
            <% if (aSuccess == "Plan Details Deleted Successfully") { %>
            <script>
                    alert("Plan Details Deleted Successfully");

            </script><% }%>
            <script> }</script>

        </body>


    </html>


