package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class payment1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("        <title>Login Form</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        .first{\n");
      out.write("            background-color:black;\n");
      out.write("            color:white;\n");
      out.write("        }\n");
      out.write("        body .dashboards{\n");
      out.write("            background-size:cover;\n");
      out.write("            background-repeat:no-repeat;\n");
      out.write("            background-attachment:fixed;\n");
      out.write("            margin:0px;\n");
      out.write("            padding:0px;\n");
      out.write("        }\n");
      out.write("        .fleft{\n");
      out.write("            float:left !important;\n");
      out.write("            margin-top:6px;\n");
      out.write("            margin-left: 20px;\n");
      out.write("            padding-right:50px;\n");
      out.write("        }\n");
      out.write("        .fright{\n");
      out.write("            float:right !important;\n");
      out.write("            text-align:left;\n");
      out.write("            margin: 0px 20px;\n");
      out.write("            display:inline-block; \n");
      out.write("            border-radius: 2px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            text-transform: uppercase;\n");
      out.write("            outline:0px;\n");
      out.write("            border:none;\n");
      out.write("            margin-top:6px;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        f-item{\n");
      out.write("            display:block;\n");
      out.write("            border:none;\n");
      out.write("            outline:0px;\n");
      out.write("        }\n");
      out.write("        .topnav-name{\n");
      out.write("            position:relative;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("    <div class=\"first\" style=\"width:100%;height:45px;\">\n");
      out.write("\n");
      out.write("        <div class=\"dropdown fright\">\n");
      out.write("            <button class=\"dropbtn\" onclick=\"location.href = 'http://localhost:8080/Hospital_network/index.html';\">Logout</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"dropdown fright\">\n");
      out.write("            <button class=\"dropbtn\" onclick=\"location.href = 'http://localhost:8080/Hospital_network/patient_profile1.jsp';\" >Edit Profiles</button>\n");
      out.write("        </div>\n");
      out.write("                <div class=\"dropdown fright\">\n");
      out.write("            <button class=\"dropbtn\" onclick=\"location.href = 'http://localhost:8080/Hospital_network/account1.jsp';\" >Payment</button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"dropdown fright\">\n");
      out.write("            <button class=\"dropbtn\" onclick=\"location.href = 'http://localhost:8080/Hospital_network/msgpatient1.jsp';\" >Message</button>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("         <div class=\"dropdown fright\">\n");
      out.write("                          <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/patientbooking1.jsp';\" >Appointments</button>\n");
      out.write("                       </div>\n");
      out.write("         <div class=\"dropdown fright\">\n");
      out.write("                          <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/doctor_list1.jsp';\" >Doctor's List</button>\n");
      out.write("                       </div>\n");
      out.write("  \n");
      out.write("    \n");
      out.write("    </div>\n");
      out.write("       \n");
      out.write("        <center>\n");
      out.write("   <div class=\"container\" style=\"width:100%;height:100%;position:absolute\">\n");
      out.write("   \n");
      out.write(" <script type=\"text/javascript\" src=\"js/fileselection.js\"></script>\n");
      out.write("\n");
      out.write("  <form name=\"buy_plan\" class=\"registartion-form\"  method=\"post\">\n");
      out.write("      <table> \n");
      out.write("         <h1 style='color:black;'>Payment</h1>\n");
      out.write("         \n");
      out.write("         \n");
      out.write("        ");

           
             int iid = Integer.parseInt(request.getParameter("id"));

ResultSet rs1;
String r=null;
String s=null;
String x=null,y=null,z=null,p=null,o=null,u=null,v=null;

       try{
           
           String name = (String)session.getAttribute("p");
         
         System.out.println(iid);
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
          
          u=session.getAttribute("p").toString();
v=session.getAttribute("l").toString();
           
      out.write("\n");
      out.write("        \n");
      out.write("         <tr>\n");
      out.write("        \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\"  name=\"from\" id=\"from\" value=\"");
      out.print(r);
      out.write("\" ></td> \n");
      out.write("      \n");
      out.write("       \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"did\" id=\"to\" value=\"");
      out.print(x);
      out.write("\" >\n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"dn\" id=\"to\" value=\"");
      out.print(r);
      out.write("\" ></td> \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"g\" id=\"to\" value=\"");
      out.print(y);
      out.write("\" ></td> \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"sp\" id=\"to\" value=\"");
      out.print(z);
      out.write("\"></td> \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"date\" id=\"to\" value=\"");
      out.print(p);
      out.write("\" ></td> \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"time\" id=\"to\" value=\"");
      out.print(o);
      out.write("\"></td> \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"un\" id=\"to\" value=\"");
      out.print(u);
      out.write("\"></td> \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"uid\" id=\"to\" value=\"");
      out.print(v);
      out.write("\"></td> \n");
      out.write("      </tr>\n");
      out.write("       <tr>\n");
      out.write("          <td><label for=\"amount\">Amount in Rs.: </label></td>\n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"amount\" id=\"amount\" value=\"");
      out.print(s);
      out.write("\" placeholder=\"Ex: 345\" required=\"required\"></td> \n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("       <tr>\n");
      out.write("          <td><label for=\"Bank Name\">Bank Name: </label></td>\n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"bank\" id=\"bank\" placeholder=\"SBI\" required=\"required\"></td> \n");
      out.write("      </tr> \n");
      out.write("      <tr>\n");
      out.write("          <td><label for=\"Account No\">Account No: </label></td>\n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"account\" id=\"account\" placeholder=\"123456845126523\" required=\"required\"></td> \n");
      out.write("      </tr> \n");
      out.write("      <tr>\n");
      out.write("          <td><label for=\"Card No\">Card No: </label></td>\n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"card\" id=\"card\" placeholder=\"256\" required=\"required\"></td> \n");
      out.write("      </tr> \n");
      out.write("      <tr>\n");
      out.write("          <input type=\"hidden\" name=\"plan_id\" />\n");
      out.write("          <input type=\"hidden\" name=\"name\" value=\"");
      out.print(name );
      out.write("\" />\n");
      out.write("      </tr>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("      <tr>\n");
      out.write("        <td colspan=\"2\"> <a href=\"pay1.jsp?id=");
      out.print(iid );
      out.write("\"><u>Pay</a></td>\n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("           \n");
      out.write("    </table>\n");
      out.write("       ");
    session.setAttribute("p1", request.getParameter("did"));
        session.setAttribute("p3", request.getParameter("g"));
         session.setAttribute("p4", request.getParameter("sp"));
          session.setAttribute("p12", request.getParameter("date"));
           session.setAttribute("p5", request.getParameter("time"));
            session.setAttribute("p6", request.getParameter("un"));
             session.setAttribute("p7", request.getParameter("uid"));
              session.setAttribute("p8", request.getParameter("amount"));
               session.setAttribute("p9", request.getParameter("bank"));
                session.setAttribute("p10", request.getParameter("account"));
                 session.setAttribute("p11", request.getParameter("card"));
       session.setAttribute("p2", request.getParameter("dn"));}
       
       catch(Exception ex){
          System.out.println(ex);
}
      out.write("\n");
      out.write("     \n");
      out.write("\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
