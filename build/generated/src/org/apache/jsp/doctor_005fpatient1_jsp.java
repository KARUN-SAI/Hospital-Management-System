package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.sun.xml.ws.rx.rm.protocol.wsrm200702.SequenceAcknowledgementElement.Final;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class doctor_005fpatient1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write(" .first{\n");
      out.write("                background-color:black;\n");
      out.write("                color:white;\n");
      out.write("            }\n");
      out.write("            body .dashboards{\n");
      out.write("                background-size:cover;\n");
      out.write("                background-repeat:no-repeat;\n");
      out.write("                background-attachment:fixed;\n");
      out.write("                margin:0px;\n");
      out.write("                padding:0px;\n");
      out.write("            }\n");
      out.write("            .fleft{\n");
      out.write("                float:left !important;\n");
      out.write("                margin-top:10px;\n");
      out.write("                margin-left:10px;\n");
      out.write("            }\n");
      out.write("            .fright{\n");
      out.write("                float:right !important;\n");
      out.write("                text-align:right;\n");
      out.write("                margin: 10px 30px;\n");
      out.write("                display:inline-block; \n");
      out.write("                border-radius: 2px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                outline:0px;\n");
      out.write("                border:none;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            f-item{\n");
      out.write("                display:block;\n");
      out.write("                border:none;\n");
      out.write("                outline:0px;\n");
      out.write("            }\n");
      out.write("            .topnav-name{\n");
      out.write("                position:relative;\n");
      out.write("            }\n");
      out.write("            .centered {\n");
      out.write("                position: absolute;\n");
      out.write("                top: 50%;\n");
      out.write("                left: 50%;\n");
      out.write("                transform: translate(-50%, -50%);\n");
      out.write("                color:black;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                font-size:22px;\n");
      out.write("                color:black;\n");
      out.write("            }\n");
      out.write("            button{\n");
      out.write("                border:none;\n");
      out.write("                color:white;\n");
      out.write("                padding:10px 30px;\n");
      out.write("                text-align:center;\n");
      out.write("                text-decoration:none;\n");
      out.write("                display:inline-block;\n");
      out.write("                font-size:16px;\n");
      out.write("                margin:4px 2px;\n");
      out.write("                cursor:pointer;\n");
      out.write("                background-color:black;\n");
      out.write("                border-radius:10px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #edit{\n");
      out.write("\n");
      out.write("                border:none;\n");
      out.write("                color:white;\n");
      out.write("                padding:10px 30px;\n");
      out.write("                text-align:center;\n");
      out.write("                text-decoration:none;\n");
      out.write("                display:inline-block;\n");
      out.write("                font-size:16px;\n");
      out.write("                margin:4px 2px;\n");
      out.write("                cursor:pointer;\n");
      out.write("                background-color:green;\n");
      out.write("                border-radius:10px;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #delete{\n");
      out.write("\n");
      out.write("                border:none;\n");
      out.write("                color:white;\n");
      out.write("                padding:10px 30px;\n");
      out.write("                text-align:center;\n");
      out.write("                text-decoration:none;\n");
      out.write("                display:inline-block;\n");
      out.write("                font-size:16px;\n");
      out.write("                margin:4px 2px;\n");
      out.write("                cursor:pointer;\n");
      out.write("                background-color:red;\n");
      out.write("                border-radius:10px;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            table{\n");
      out.write("                font-size: 10px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("     <div class=\"first\" style=\"width:100%;height:45px;\">\n");
      out.write("                     <h2 class=\"topnav-name fleft\" title=\"name\" >HOSPITAL NETWORK SYSTEM</h2>\n");
      out.write("      \n");
      out.write("                      <div class=\"dropdown fright\">\n");
      out.write("                           <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/index.jsp';\">Logout</button>\n");
      out.write("                          </div>\n");
      out.write("                          \n");
      out.write("                            \n");
      out.write("                        \n");
      out.write("                          <div class=\"dropdown fright\">\n");
      out.write("                          <button class=\"dropbtn\" onclick=\"location.href='http://localhost:8080/Hospital_network/doctor_patient1.jsp';\" >Patient List</button>\n");
      out.write("                       </div>\n");
      out.write("                     \n");
      out.write("                    \n");
      out.write("                          \n");
      out.write("                 </div>\n");
      out.write("\n");
      out.write("    <div class=\"container1\" style=\"width:100%;height:100%;position:absolute\">\n");
      out.write("        \n");
      out.write("    <table border=\"1\" style=\"height:50px;width: 1000px;\">\n");
      out.write("                    <br>\n");
      out.write("                    <h1 style='color:black;'>APPOINTMENS</h1>\n");
      out.write("                    <br>\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <th style=\"height: auto;width:100px;\">Booking Id </th>\n");
      out.write("                        <th>Patient Name</th>\n");
      out.write("                        <th>Date</th>\n");
      out.write("                        <th>Timing</th>\n");
      out.write("\n");
      out.write("                        <th>Action</th>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    ");
 
                        String j=(String)session.getAttribute("j");
                    
                        Connection con;
                        Statement stmt,stmt1;try {
                            String dd = null;
                            Class.forName("com.mysql.jdbc.Driver");
                            
                            System.out.println("Driver Start");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                            System.out.println("Getconnection Start");
                            stmt = con.createStatement();
                            try {
                                String sql4 = "select * from doctor_details where username='" + j + "'";
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
                                       
                                   
                                    int idd = rs.getInt(1);
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td style=\"height: 50px;width:70px;\"> ");
 out.println(rs.getString(1)); 
      out.write(" </td>\n");
      out.write("                        <td>");
 out.println(rs.getString(2)); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.println(rs.getString(7)); 
      out.write("</td>\n");
      out.write("                        <td>");
 out.println(rs.getString(8)); 
      out.write("</td>\n");
      out.write("                        \n");
      out.write(" <td>     <a href=\"message1.jsp?idd=");
      out.print(idd );
      out.write("\"><u>Click here</u></a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                                    System.out.println(sql);
                                }
}

                            } catch (Exception e) {
                                System.out.println(e);

                            }
                        } catch (Exception e) {
                            System.out.println(e);
                        }

                    
      out.write("\n");
      out.write("  </table>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("   <img src= \"img/bg.jpg\">\n");
      out.write("</body>\n");
      out.write("<html>");
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
