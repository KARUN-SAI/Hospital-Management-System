

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Registration Form</title>
    </head>
    <style>
        .first{
            background-color:#6F4E37;
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

        <ul>
            <li><a href="">HOSPITAL NETWORK SYSTEM</a></li>

            <li style="float:right"><a href="patientregister.jsp">Register</a></li>
            <li style="float:right"><a href="patient1.jsp">Login</a></li>
            <li style="float:right"><a href="index.jsp">Home</a></li>

        </ul>
    <center>
        <div class="container" style="width:100%;height:100%;position:absolute">

            <script type="text/javascript" src="js/fileselection.js"></script>

            <form name="registration" class="registartion-form" action="common_register" method="post">
                <table> 
                    <h1 style='color:black;'>Registration Form</h1>
                    <tr>
                        <td><label for="name">Name:</label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" id="name" placeholder="your name" required="required"></td>
                    </tr> <tr>
                        <td><label for="gender">Gender:</label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Male: <input type="radio" name="gender" value="male" required="required">
                            Female: <input type="radio" name="gender" value="female" required="required">
                    </tr>
                    <tr>
                        <td><label for="name">Age: </label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="age" id="name" placeholder="your age" required="required"></td>
                    </tr>
                    <tr>
                        <td><label for="name">Phone :</label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="phone" id="name" placeholder="your phone number" required="required"></td>
                    </tr>
                    <tr>
                        <td><label for="name">Address:</label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address" id="name" placeholder="your Address" required="required"></td>
                    </tr>
                    <tr>
                        <td><label for="uname">User Name</label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uname" id="uname" placeholder="your User Name" required="required"></td>
                    </tr>

                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" id="password" placeholder="your Password" required="required">
                            <i class="far fa-eye" id="togglePassword" style="margin-left: -1px; cursor: pointer;"></i></td>
                    <script>
                        const togglePassword = document.querySelector('#togglePassword');
                        const password = document.querySelector('#password');

                        togglePassword.addEventListener('click', function (e) {
                            // toggle the type attribute
                            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                            password.setAttribute('type', type);
                            // toggle the eye slash icon
                            this.classList.toggle('fa-eye-slash');
                        });
                    </script>

                    </tr>



                    <tr>
                        <td colspan="2"><input type="submit" class="submit" value="Register" /></td>
                    </tr>

                </table>
                <script>
                    function msgfunction() {</script>
                    <%

      String sAction = (String) request.getAttribute("alertMsg"); %> 
                    <% if (sAction == "In Progress, Not yet decide") { %>
                <script>
                        alert("In Progress, Not yet decide");

                </script><% }
            String aSuccess = (String) request.getAttribute("alertMsg"); %> 
                <% if (aSuccess == "Registered Successfully") { %>
                <script>
                        alert("Registered Successfully");

                </script><% }%>
                <script> }</script>

            </form>
        </div>
    </center>
<!--    <img src= "img/bg.jpg">-->
    <br>
<!--    <footer class="main-footer">
        <p>Developed by <a href="" target="_blank">  </a></p>
    </footer>-->
</body>

</html>


