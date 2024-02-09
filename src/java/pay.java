


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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


@WebServlet(urlPatterns = {"/pay"})
public class pay extends HttpServlet {

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
         try{  String list_id = request.getParameter("id");
  
                
                 String t1 = null,t2 = null,t3 = null,t4 = null,uid = null;
                  String amount = request.getParameter("amount");
                   String bank = request.getParameter("bank");
                   String account = request.getParameter("account");
                    String card = request.getParameter("card");
                     String un = request.getParameter("un");
                   String ui= request.getParameter("uid");
                   String dn = request.getParameter("dn");
                    String di = request.getParameter("did");
                     String sp = request.getParameter("sp");
                   String date = request.getParameter("date");
                   String time = request.getParameter("time");
                    
                    
                  String sqll="select * from doctor_list where id='"+list_id+"'" ;
              
                 System.out.println(sqll);
                ResultSet rs=stmt.executeQuery(sqll);
             
            
                  if (rs.next()) {
                      System.out.println("Start");
                      
                      t1=rs.getString(3);
                      t2=rs.getString(5);
                      t3=rs.getString(6);
                      t4=rs.getString(7);

                    } 
              
                 if(true)
                 {
                    
            String sql = "INSERT INTO payment(username,user_id,doctor_name,doctor_id,specialist,date,timing,amount,bankname,account,card,status,action,patient_condition,view_statues)values ('"+un+"','"+ui+"','"+dn+"','"+di+"','"+sp+"','"+date+"','"+time+"','"+amount+"','"+bank+"','"+account+"','"+card+"','"+"Booked"+"','"+"Paid"+"','"+"null"+"','"+"0"+"')";
                      System.out.println(sql);
                       stmt.executeUpdate(sql);
                           
                           
                       
                           RequestDispatcher req = request.getRequestDispatcher("doctor_list1.jsp");
                         req.forward(request, response);
                          
                 }
        }catch(Exception e){
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
