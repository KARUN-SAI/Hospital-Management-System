

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
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

@WebServlet(urlPatterns = {"/editprofile"})
public class editprofile extends HttpServlet {

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

        

                  String name = request.getParameter("name");
                   String username = request.getParameter("username");
                   String email = request.getParameter("email");
                    String password = request.getParameter("password");
                     String gender = request.getParameter("gender");
                   

           
                 if(name.isEmpty())
                 {
                     System.out.println("Error");
                           RequestDispatcher req = request.getRequestDispatcher("admin.jsp");
                           req.include(request, response);

                 }
                 else if(username.equals("admin"))
                 {
                     System.out.println("before update:"+name);
                     String sql = "update admin set user_name='"+username+"',password='"+password+"',email_id='"+email+"' where admin_name='"+name+"'";
                        System.out.println("Frst:"+sql);
                       stmt.executeUpdate(sql);
                           System.out.println(sql);
                           request.setAttribute("alertMsg", "Profile Updated Successfully");
                           RequestDispatcher req = request.getRequestDispatcher("admin.jsp");
                           req.forward(request, response);
                          
                 }
                 else{
                      System.out.println("before update:"+name);
                     String sql = "update register_details set username='"+username+"',password='"+password+"',gender='"+gender+"' where name='"+name+"'";
                        System.out.println("second:"+sql);
                       stmt.executeUpdate(sql);
                           System.out.println(sql);
                           request.setAttribute("alertMsg", "Profile Updated Successfully");
                           RequestDispatcher req = request.getRequestDispatcher("patientside.jsp");
                           req.forward(request, response);
                     
                 }
                 }
    catch(Exception e){
        e.printStackTrace();
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
            Logger.getLogger(editprofile.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(editprofile.class.getName()).log(Level.SEVERE, null, ex);
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
