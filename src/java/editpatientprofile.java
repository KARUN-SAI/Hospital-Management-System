

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/editpatientprofile"})
public class editpatientprofile extends HttpServlet {

    Connection con;
    Statement stmt;
    Statement stmt1;
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        
        try{
              Class.forName("com.mysql.jdbc.Driver");
                 System.out.println("Driver Start");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
                System.out.println("Getconnection Start");
             stmt = con.createStatement();
             stmt1 = con.createStatement();
}
    catch(Exception e){
        e.printStackTrace();
        System.out.println(e);
}
        
        String staffname = request.getParameter("name");
        System.out.println(staffname);
        String age = request.getParameter("age");
        System.out.println(staffname);
        String gender = request.getParameter("gender");
         System.out.println(gender);
        String phone = request.getParameter("phone");
         System.out.println(phone);
        String address = request.getParameter("address");
         System.out.println(address);
       
        
         String username = request.getParameter("username");
          System.out.println(username);
              
                 String password = request.getParameter("password");
                 String patient_id = request.getParameter("staff_id");
                  
                    System.out.println("hoi");
                
                 
                      
                     String sql = "Update patient_details set patient_name='"+staffname+"', gender='"+gender+"',age='"+age+"',phone='"+phone+"',address='"+address+"',username='"+username+"', password='"+password+"' where patient_name='"+staffname+"'";
System.out.println("Frst:"+sql);
                       stmt.executeUpdate(sql);
                           System.out.println(sql);
                           request.setAttribute("alertMsg", "Profile Updated Successfully");
                           RequestDispatcher req = request.getRequestDispatcher("patient_profile.jsp");
                           req.forward(request, response);
                     
                 
              
                 
                   
                         
           
    }
        
       
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(add_staff.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(add_staff.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
