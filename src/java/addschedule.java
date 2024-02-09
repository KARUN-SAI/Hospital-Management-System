

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


@WebServlet(urlPatterns = {"/addschedule"})
public class addschedule extends HttpServlet {

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
                           RequestDispatcher req = request.getRequestDispatcher("staffdoctor_list.jsp");
                           req.include(request, response);

                 }
                 else
                 {
            String sql = "INSERT INTO doctor_list (doctor_id,doctor_name,gender,specialist,date,timing,fee) "
                    + "values ('"+staffname+"','"+gender+"','"+phone+"','"+address+"','"+qualification+"','"+username+"','"+email+"')";
                       System.out.println(sql);
                       stmt.executeUpdate(sql);
                           
                           request.setAttribute("alertMsg", "Plan Details Updated Successfully");
                           
                           RequestDispatcher req = request.getRequestDispatcher("staffdoctor_list.jsp");
                           req.forward(request, response);
                          
                 }   }
    catch(Exception e){
        e.printStackTrace();
        System.out.println(e);
}
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
