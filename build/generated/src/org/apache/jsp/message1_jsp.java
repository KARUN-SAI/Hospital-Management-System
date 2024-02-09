package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import com.sun.xml.ws.rx.rm.protocol.wsrm200702.SequenceAcknowledgementElement.Final;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class message1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("<title>Login Form</title>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write(" <script>function msgfunction(){alert(\"Message send successfully\");}</script>\n");
      out.write("<style>\n");
      out.write("    input {\n");
      out.write("  background: lightgreen;\n");
      out.write("  padding: 12px 40px;\n");
      out.write(" border-radius: 8px;\n");
      out.write(" box-shadow: 2px 2px 2px 1px rgb(131, 131, 219) ;\n");
      out.write(" border: 1px solid gray;\n");
      out.write(" font-size: 20px;\n");
      out.write("}\n");
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
      out.write("    <table >\n");
      out.write("                   \n");
      out.write("          ");
 
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
                       System.out.println(doctorname);
                         System.out.println(qualification);
                       
                      
                        
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
      out.write("       \n");
      out.write("      ");

          

          
          
      out.write("\n");
      out.write("     \n");
      out.write("  \n");
      out.write("      \n");
      out.write("       <td >   <a href=\"message2.jsp?id=");
      out.print(doctorname );
      out.write(" \">  <u>  \n");
      out.write("      <input type=\"button\" class=\"submit\" value=\"Send message to next patients...\"  onclick=\"msgfunction()\"/>\n");
      out.write("      \n");
      out.write("      </u></a></td>\n");
      out.write("  \n");
      out.write("      \n");
      out.write("      ");
  }
                        }
                            catch(Exception e){
                                e.printStackTrace();
                        }
                   
                    
      out.write("\n");
      out.write("  </table>\n");
      out.write("            </div>\n");
      out.write("   <img src= \"img/bg.jpg\">\n");
      out.write("\n");
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
