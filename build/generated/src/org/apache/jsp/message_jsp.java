package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class message_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 Connection con;
Statement stmt;
Statement stmt1;
String staffname;
String username; 
String doctorname;
String email;
String password;
String gender;
String address;
String qualification;
String phone;
String mobile,sp;
String noofstaff;
int tollgate_id;
int id;
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
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("<title>Edit Tollgate</title>\n");
      out.write("</head>\n");
      out.write(" <script>\n");
      out.write("function back_funct(){\n");
      out.write("   \n");
      out.write("   \n");
      out.write("//window.open(\"Register.jsp\");\n");
      out.write("window.open(\"http://localhost:8080/Hospital_network/doctor_patient.jsp?name=\"+name\");\n");
      out.write("//var name = \"roseindia\";\n");
      out.write("//window.location.replace(\"a.jsp?name=\"+name);\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write("           .first{\n");
      out.write("    background-color:black;\n");
      out.write("    color:white;\n");
      out.write("}\n");
      out.write("body .dashboards{\n");
      out.write("    background-size:cover;\n");
      out.write("     background-repeat:no-repeat;\n");
      out.write("     background-attachment:fixed;\n");
      out.write("     margin:0px;\n");
      out.write("     padding:0px;\n");
      out.write("}\n");
      out.write(".fleft{\n");
      out.write("    float:left !important;\n");
      out.write("    margin-top:10px;\n");
      out.write("    margin-left:10px;\n");
      out.write("}\n");
      out.write(".fright{\n");
      out.write("    float:right !important;\n");
      out.write("    text-align:right;\n");
      out.write("    margin: 10px 30px;\n");
      out.write("    display:inline-block; \n");
      out.write("    border-radius: 2px;\n");
      out.write("   font-weight: bold;\n");
      out.write("   text-transform: uppercase;\n");
      out.write("     outline:0px;\n");
      out.write("        border:none;\n");
      out.write("     \n");
      out.write("}\n");
      out.write("f-item{\n");
      out.write("    display:block;\n");
      out.write("    border:none;\n");
      out.write("    outline:0px;\n");
      out.write("}\n");
      out.write(".topnav-name{\n");
      out.write("    position:relative;\n");
      out.write("}\n");
      out.write(".centered {\n");
      out.write("  position: absolute;\n");
      out.write("  top: 50%;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("  color:black;\n");
      out.write("  text-transform: uppercase;\n");
      out.write(" font-size:22px;\n");
      out.write(" color:black;\n");
      out.write("}\n");
      out.write(" button{\n");
      out.write("    border:none;\n");
      out.write("    color:white;\n");
      out.write("    padding:10px 30px;\n");
      out.write("    text-align:center;\n");
      out.write("    text-decoration:none;\n");
      out.write("    display:inline-block;\n");
      out.write("    font-size:16px;\n");
      out.write("    margin:4px 2px;\n");
      out.write("    cursor:pointer;\n");
      out.write("    background-color:black;\n");
      out.write("    border-radius:10px;\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("                         \n");
      out.write("\n");
      out.write("                      \n");
      out.write("          \n");
      out.write("    <div class=\"first\" style=\"width:100%;height:45px;\">\n");
      out.write("      <h2 class=\"fleft topnav-name\" title=\"name\" style=\"padding-right:10px !important;passing-left:10px !important;\">Coffee Shop</h2>\n");
      out.write("        <a class=\"fright f-item topnav-icons\" href=\"http://localhost:8080/Hospital_network/index.html\" target=\"_blank\" title=\"login\" style=\"padding-right:10px !important; padding-left:10px !important; color:white;\"> Logout </a>\n");
      out.write("    \n");
      out.write("                 </div>\n");
      out.write("<center>\n");
      out.write("   <div class=\"container\" style=\"width:100%;height:100%;position:absolute\">\n");
      out.write("   \n");
      out.write(" <script type=\"text/javascript\" src=\"js/fileselection.js\"></script>\n");
      out.write("\n");
      out.write("  <form name=\"editstaff\" class=\"registartion-form\" action=\"message\" method=\"post\">\n");
      out.write("      <table> \n");
      out.write("         <h1 style='color:black;'>Patient Condition</h1>\n");
      out.write("          ");
  try{
               String staff_id = request.getParameter("id");
               
              
                    Class.forName("com.mysql.jdbc.Driver");
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from payment where id='"+staff_id+"' ";
                      // System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) {
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("\n");
      out.write("                       \n");
      out.write("                        ");
 
                           
                        doctorname=rs.getString(1);
                       
                         qualification=rs.getString(5);
                       
                       
                      
                        
      out.write("\n");
      out.write("         <tr>\n");
      out.write("       \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"f\" value=\"");
      out.print(doctorname);
      out.write("\" id=\"staffname\"  ></td>\n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("     <tr>\n");
      out.write("       \n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"hidden\" name=\"ff\"value=\"");
      out.print("1");
      out.write("\"></td>\n");
      out.write("      </tr>\n");
      out.write("       <tr>\n");
      out.write("        <td><label for=\"hospital\">Specialist</label></td>\n");
      out.write("        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"text\" name=\"feedback\" id=\"staffname\" placeholder=\"Enter\" required=\"required\"></td>\n");
      out.write("      </tr>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("  \n");
      out.write("      \n");
      out.write("     \n");
      out.write("  \n");
      out.write("      <tr>\n");
      out.write("        <td colspan=\"2\"><input type=\"submit\" class=\"submit\" value=\"Submit\" /></td>\n");
      out.write("       \n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <button id=\"back\" onclick=\"back_funct()\">Back</button>\n");
      out.write("      </tr>\n");
      out.write("    ");
  }
                        }
                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    
      out.write("\n");
      out.write("           \n");
      out.write("    </table>\n");
      out.write("       <script>\n");
      out.write("         function msgfunction(){ </script>\n");
      out.write("  ");

      
   String sAction = (String) request.getAttribute("alertMsg"); 
      out.write(" \n");
      out.write("    ");
 if(sAction=="In Progress, Not yet decide"){ 
      out.write("\n");
      out.write("    <script>\n");
      out.write("        alert(\"In Progress, Not yet decide\");\n");
      out.write("        \n");
      out.write("        </script>");
 } 
     String aSuccess=  (String) request.getAttribute("alertMsg"); 
      out.write(" \n");
      out.write("    ");
 if(aSuccess=="Doctor Details Updated Successfully"){ 
      out.write("\n");
      out.write("    <script>\n");
      out.write("        alert(\"Doctor Details Updated Successfully\");\n");
      out.write("        \n");
      out.write("        </script>");
 } 
      out.write("\n");
      out.write("<script> }</script>\n");
      out.write("\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("<br>\n");
      out.write(" <footer class=\"main-footer\">\n");
      out.write("        <p>Developed by <a href=\"\" target=\"_blank\">  </a></p>\n");
      out.write("    </footer>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
