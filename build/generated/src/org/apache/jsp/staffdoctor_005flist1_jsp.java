package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class staffdoctor_005flist1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("<title>Login Form</title>\n");
 String name;
      out.write("\n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write(".first{\n");
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
      out.write("    margin-top:6px;\n");
      out.write("    margin-left: 20px;\n");
      out.write("    padding-right:50px;\n");
      out.write("}\n");
      out.write(".fright{\n");
      out.write("    float:right !important;\n");
      out.write("   text-align:left;\n");
      out.write("    margin: 0px 20px;\n");
      out.write("    display:inline-block; \n");
      out.write("    border-radius: 2px;\n");
      out.write("   font-weight: bold;\n");
      out.write("   text-transform: uppercase;\n");
      out.write("     outline:0px;\n");
      out.write("     border:none;\n");
      out.write("      margin-top:6px;\n");
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
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("            \n");
      out.write("    \n");
      out.write("      ");

 String Y = (String) session.getAttribute("y");
     System.out.println(Y);

 /*   if(name2.isEmpty()){
      name2 = request.getParameter("name");
    }*/
   
     
      out.write("\n");
      out.write("       <div class=\"first\" style=\"width:100%;height:45px;\">\n");
      out.write("                     <h2 class=\"topnav-name fleft\" title=\"name\" >HOSPITAL NETWORK SYSTEM</h2>\n");
      out.write("      \n");
      out.write("                     <div class=\"dropdown fright\">\n");
      out.write("                           <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/index.html';\">Logout</button>\n");
      out.write("                          </div>\n");
      out.write("                           \n");
      out.write("                          \n");
      out.write("                            \n");
      out.write("                        <div class=\"dropdown fright\">\n");
      out.write("                          <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/request1.jsp';\">View Request</button>\n");
      out.write("                          </div>\n");
      out.write("                          <div class=\"dropdown fright\"> <ul>\n");
      out.write("                                  <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/staffdoctor_list1.jsp';\">Doctor</button>\n");
      out.write("                                  \n");
      out.write("                          </div>\n");
      out.write("                     \n");
      out.write("                       <div class=\"dropdown fright\">\n");
      out.write("                          <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/bill1.jsp';\" >Bill</button>\n");
      out.write("                       </div>\n");
      out.write("                         \n");
      out.write("                          \n");
      out.write("                 </div>\n");
      out.write("        <div class=\"container1\" style=\"width:100%;height:100%;position:absolute\">\n");
      out.write("                         <table border=\"1\" style=\"height:50px;width: 1000px;\">\n");
      out.write("                       <br>\n");
      out.write("                        <h1 style='color:black;'>DOCTORs LIST</h1>\n");
      out.write("                        <br>\n");
      out.write("                        <tr>\n");
      out.write("                           \n");
      out.write("                             <td style=\"height: auto;width:100px;\">Doctor ID</td>\n");
      out.write("                           <td style=\"height: auto;width:100px;\">Doctor Name</td>\n");
      out.write("                             <td>Gender </td>\n");
      out.write("                                  <td>Specialist</td>\n");
      out.write("                             \n");
      out.write("                                  \n");
      out.write("                                <td>Schedule</td>\n");
      out.write("                             \n");
      out.write("    \n");
      out.write("                        </tr>\n");
      out.write("                      \n");
      out.write("                        ");
  try{
                             Connection con;
Statement stmt;
Statement stmt1;
                    Class.forName("com.mysql.jdbc.Driver");
                
                    
                       System.out.println("Driver Start");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                      System.out.println("Getconnection Start");
                       stmt = con.createStatement();
                        stmt1 = con.createStatement();
                         String sql="select * from doctor_details";
                       System.out.println(sql);
                       ResultSet rs=stmt.executeQuery(sql);
                        while (rs.next()) 
{ int id=rs.getInt(1);
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                           \n");
      out.write("                     <td style=\"height: 50px;width:70px;\"> ");
 out.println(rs.getInt(1)); 
      out.write(" </td>\n");
      out.write("                   \n");
      out.write("                        <td>");
 out.println(rs.getString(2)); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.println(rs.getString(3)); 
      out.write("</td>\n");
      out.write("                        <td>");
  out.println(rs.getString(7)); 
      out.write("</td>\n");
      out.write("                        <td>     <a href=\"addschedule1.jsp?id=");
      out.print(id );
      out.write("\"><u>Add</u></a></td>\n");
      out.write("                        <td>     <a href=\"schedule1.jsp?id=");
      out.print(id );
      out.write("\"><u>View</a></u></td>\n");
      out.write("                        \n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        </tr>\n");
      out.write("                        ");
  

                      }
                        }
                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    
      out.write("\n");
      out.write("                 \n");
      out.write("      \n");
      out.write("            </table>\n");
      out.write("   </div>\n");
      out.write("\n");
      out.write("</body>");
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
