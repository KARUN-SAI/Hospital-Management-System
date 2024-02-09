package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class addscheduleback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("      ");
     Connection con;
Statement stmt;
Statement stmt1;    
       
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
             stmt = con.createStatement();
             stmt1 = con.createStatement();

      try{  
        String staffname = request.getParameter("did");
        System.out.println(staffname);
        String gender = request.getParameter("dname");
         System.out.println(gender);
        String phone = request.getParameter("gender");
         System.out.println(phone);
        String address = request.getParameter("sp");
         System.out.println(address);
        String qualification = request.getParameter("date");
         System.out.println(qualification);
         String username = request.getParameter("time");
          System.out.println(username);
                 String email=request.getParameter("fee");
         
                  
                    
                
                 if(staffname.isEmpty() || gender.isEmpty()  || phone.isEmpty() || address.isEmpty() || qualification.isEmpty()|| email.isEmpty() ||
                                    username.isEmpty())
                 {
                     System.out.println("Error");
                         

                 }
                 else
                 {
            String sql = "INSERT INTO doctor_list (doctor_id,doctor_name,gender,specialist,date,timing,fee) "
                    + "values ('"+staffname+"','"+gender+"','"+phone+"','"+address+"','"+qualification+"','"+username+"','"+email+"')";
                       System.out.println(sql);
                       stmt.executeUpdate(sql);
                          response.sendRedirect("addschedule1.jsp");
                 }   }
    catch(Exception e){
        e.printStackTrace();
        System.out.println(e);
}
                
      out.write("\n");
      out.write("   ");
    } catch (SQLException ex) { 
          Logger.getLogger(addscheduleback_jsp.class.getName()).log(Level.SEVERE, null, ex);
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(addscheduleback_jsp.class.getName()).log(Level.SEVERE, null, ex);
      } 
}
}
