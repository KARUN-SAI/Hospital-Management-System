

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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

@WebServlet(urlPatterns = {"/message"})
public class message extends HttpServlet {

    Connection con;
    Statement stmt;
    Statement stmt1;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Start");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_network", "root", "");
            System.out.println("Getconnection Start");
            stmt = con.createStatement();
            stmt1 = con.createStatement();

            String id = request.getParameter("f");
            String status = request.getParameter("ff");
            String condition = request.getParameter("feedback");

            String j = null, k = null, jf = null;

            String sql = "update payment set patient_condition='" + condition + "',view_statues='" + status + "' where id='" + id + "'";
            System.out.println("second:" + sql);
            stmt.executeUpdate(sql);
            String sqll = "select * from payment where id=" + id;
            System.out.println(sqll);
            ResultSet rs = stmt.executeQuery(sqll);
            while (rs.next()) {

                j = rs.getString(5);
            }
            request.setAttribute("alertMsg", "Profile Updated Successfully");
            request.setAttribute("name", j);
            try {
                int i = 0;
                String sql2 = "select * from payment where doctor_id=" + j;
                System.out.println(sql2);
                ResultSet rss = stmt.executeQuery(sql2);
                while (rss.next()) {
                     if ("Booked".equals(rss.getString(13)) && (rss.getString(16) != "1")) {
                    // Set the parameters
                     String msg = "Dear patient, You are the " + (i++) + "th appointment";
                     String sql6 = "INSERT INTO msg (user_id,message)" + "values (?,?)";
                    PreparedStatement statement = con.prepareStatement(sql6);

                    statement.setString(1, rss.getString(3));
                    statement.setString(2, msg);
                   
System.out.println("Success "+i);
                   
                    statement.executeUpdate();
                     }
             }

            } catch (Exception e) {
                System.out.println(e);
            }
                           request.setAttribute("alertMsg", "Doctor Details Updated Successfully");
            RequestDispatcher req = request.getRequestDispatcher("doctor_patient.jsp");
            req.forward(request, response);

        } catch (Exception e) {
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
