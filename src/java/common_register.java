
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


@WebServlet(urlPatterns = {"/common_register"})
public class common_register extends HttpServlet {

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
}
        
        String first_name = request.getParameter("name");
         String gender = request.getParameter("gender");
         String age = request.getParameter("age");
         String phone = request.getParameter("phone");
              String address = request.getParameter("address");
                 String uname = request.getParameter("uname");
                 String password=request.getParameter("password");
                
             
                  
                  System.out.println(first_name);
                  System.out.println(uname);
                  System.out.println(password);
                  System.out.println(gender);
                
                 if(first_name.isEmpty() || uname.isEmpty() || password.isEmpty() ||
                                    gender.isEmpty()|| phone.isEmpty() || address.isEmpty()|| age.isEmpty())
                 {
                     System.out.println("Error");
                           RequestDispatcher req = request.getRequestDispatcher("register.jsp");
                           req.include(request, response);

                 }
                 else
                 {
            String sql = "INSERT INTO patient_details (patient_name,gender,age,phone,address,username,password) "
                    + "values ('"+first_name+"','"+gender+"','"+age+"','"+phone+"','"+address+"','"+uname+"','"+password+"')";
                       System.out.println(sql);
                       stmt.executeUpdate(sql);
                           
                           request.setAttribute("alertMsg", "Registered Successfully");
                           RequestDispatcher req = request.getRequestDispatcher("patientregister.jsp");
                           req.forward(request, response);
                          
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
            Logger.getLogger(common_register.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(common_register.class.getName()).log(Level.SEVERE, null, ex);
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
