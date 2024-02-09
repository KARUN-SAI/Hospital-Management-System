package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class patient_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--\r\n");
      out.write("To change this license header, choose License Headers in Project Properties.\r\n");
      out.write("To change this template file, choose Tools | Templates\r\n");
      out.write("and open the template in the editor.\r\n");
      out.write("-->\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\r\n");
      out.write("<title>Login Form</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   \r\n");
      out.write("          \r\n");
      out.write("         \r\n");
      out.write("     \r\n");
      out.write("                             <ul>\r\n");
      out.write("            <li><a href=\"\">HOSPITAL NETWORK SYSTEM</a></li>\r\n");
      out.write("          \r\n");
      out.write("  <li style=\"float:right\"><a href=\"patientregister.jsp\">Register</a></li>\r\n");
      out.write("  <li style=\"float:right\"><a href=\"patient.jsp\">Login</a></li>\r\n");
      out.write("  <li style=\"float:right\"><a href=\"index.html\">Home</a></li>\r\n");
      out.write("  \r\n");
      out.write("</ul>\r\n");
      out.write("\r\n");
      out.write("<center>\r\n");
      out.write("   <div class=\"container\" style=\"width:100%;height:100%;\">\r\n");
      out.write("\r\n");
      out.write("  <form name=\"Login Form\" class=\"login-form\" action=\"patientlogin\" method=\"post\">\r\n");
      out.write("         \r\n");
      out.write("      <table> \r\n");
      out.write("         <h1 style='color:black;'>Login Form</h1>\r\n");
      out.write("         <br>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><label for=\"username\">User Name:</label></td>\r\n");
      out.write("        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type=\"text\" name=\"username\" placeholder=\"your Username\" required=\"required\"></td>\r\n");
      out.write("        \r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><label for=\"password\">Password:</label></td>\r\n");
      out.write("        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type=\"text\" name=\"password\" placeholder=\"your Password\" required=\"required\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("         \r\n");
      out.write("           \r\n");
      out.write("      <tr>\r\n");
      out.write("        <td colspan=\"2\"><input type=\"submit\" class=\"submit\" value=\"Submit\" onclick=\"msgfunction()\"/></td>\r\n");
      out.write("      \r\n");
      out.write("      </tr>\r\n");
      out.write("           \r\n");
      out.write("    </table>\r\n");
      out.write("            \r\n");
      out.write("    <script>\r\n");
      out.write("         function msgfunction(){ </script>\r\n");
      out.write("  ");

      
   String sAction = (String) request.getAttribute("error"); 
      out.write(" \r\n");
      out.write("    ");
 if(sAction=="Invalid user or password"){ 
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        alert(\"Invalid Username Or Password\");\r\n");
      out.write("        \r\n");
      out.write("        </script>");
 } 
     String aSuccess=  (String) request.getAttribute("success"); 
      out.write(" \r\n");
      out.write("    ");
 if(aSuccess=="Logged In Successfully"){ 
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        alert(\"Logged In Successfully\");\r\n");
      out.write("        //window.open(\"candidate_portal.jsp\");\r\n");
      out.write("        </script>");
 } 
      out.write("\r\n");
      out.write("<script> }</script>\r\n");
      out.write("\r\n");
      out.write("  </form>\r\n");
      out.write("     \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("    </center>               \r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
