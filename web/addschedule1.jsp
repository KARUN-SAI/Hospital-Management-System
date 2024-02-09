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
        <% String name;
            Connection con;
            Statement stmt = null, stmt1 = null;
            String doctorid = null, doctorname = null, genderr = null, specialist = null;%>
    </head>
    <script>   function back_funct() {

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
            <h2 class="topnav-name fleft" title="name" >HOSPITAL NETWORK SYSTEM</h2>

            <div class="dropdown fright">
                <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/index.jsp';">Logout</button>
            </div>



            <div class="dropdown fright">
                <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/request1.jsp';">View Request</button>
            </div>
            <div class="dropdown fright"> <ul>
                    <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/staffdoctor_list1.jsp';">Doctor</button>

            </div>

            <div class="dropdown fright">
                <button class="dropbtn" onclick="location.href = 'http://localhost:8080/Hospital_network/bill1.jsp';" >Bill</button>
            </div>


        </div>
        <div class="container1" style="width:100%;height:100%;position:absolute">
            <form name="add_staff" class="registartion-form"  method="post">

                <table>
                    <br>
                    <h1 style='color:black;'>DOCTORs LIST</h1>
                    <br>




                    <tr>
                        <td><label for="amount">Date </label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="date" id="amount" placeholder="Ex: 345" required="required"></td> 
                    </tr>
                    <tr>
                        <td><label for="amount">Timing: </label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="timing" id="amount"   required="required"></td> 
                    </tr>
                    <tr>
                        <td><label for="amount">Fee: </label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="fee" id="amount"   required="required"></td> 
                    </tr>




                    <tr>
                    <button id="back" onclick="<% int id = 0;
                        String username1;
                        String h = null;
                        try {
                            String idd = request.getParameter("id").toString();
                            Class.forName("com.mysql.jdbc.Driver");

                            System.out.println("Driver Start");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                            System.out.println("Getconnection Start");
                            stmt = con.createStatement();
                            stmt1 = con.createStatement();
                            String sqll = "select * from doctor_details where doctor_id='" + idd + "'";
                            System.out.println(sqll);
                            ResultSet rs = stmt.executeQuery(sqll);
                            while (rs.next()) {
                                id = rs.getInt(1);

                                doctorid = rs.getString(1);
                                doctorname = rs.getString(2);
                                genderr = rs.getString(3);
                                specialist = rs.getString(7);
                            }

                        } catch (Exception e) {
                            System.out.println(e);
                        }
                        try {

                            Class.forName("com.mysql.jdbc.Driver");
                            System.out.println("Driver Start");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                            System.out.println("Getconnection Start");
                            stmt = con.createStatement();
                            stmt1 = con.createStatement();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }


                        String qualification = request.getParameter("date");
                        System.out.println(qualification);
                        String username = request.getParameter("timing");
                        System.out.println(username);
                        String email = request.getParameter("fee");
                        if (doctorname != null) {
                            if (email != null) {
                                if (username != null) {
                                    String sql = "INSERT INTO doctor_list (doctor_id,doctor_name,gender,specialist,date,timing,fee) "
                                            + "values ('" + doctorid + "','" + doctorname + "','" + genderr + "','" + specialist + "','" + qualification + "','" + username + "','" + email + "')";
                                    System.out.println(sql);
                                    stmt.executeUpdate(sql);

                                    if (true) {
                                        System.out.println("Start");

                                    }
                                }
                            }
                        }


                            %>">Submit</button>
                    </tr>
                </table></form>
        </div>
        <img src= "img/bg1.jpg">              
    </body>
</html>