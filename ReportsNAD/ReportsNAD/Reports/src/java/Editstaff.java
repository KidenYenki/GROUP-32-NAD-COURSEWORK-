/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Kiden Yenki
 */
public class Editstaff extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Editstaff</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            
            try{
            Connection co = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/manager","root","");
            Statement st= co.createStatement();
            
               ResultSet rs=st.executeQuery("select * from employee");
               out.println("<a href='/Reports/Manager'>Logout</a>");
               
               out.println("<h1>Editstaff</h1>");
               
             out.println("<table border=1>"
                    + "<tr>"
                    + "<th>name</th>"
                     + "<th>address</th>"
                     + "<th>telephone</th>"
                     + "<th>dob</th>"
                      + "<th>Action</th>"
                    + "</tr>");
            while(rs.next()){
                
                out.println("<tr>"
                        + "<td>"+rs.getString("name")+"</td>"
                        + "<td>"+rs.getString("address")+"</td>"        
                         + "<td>"+rs.getString("telephone")+"</td>"       
                         + "<td>"+rs.getString("dob")+"</td>"   
                         + "<td><a href='/Reports/Manager'>Edit</a></td>" 
                                 
                        + "</tr>");
            }
            out.println("</table>");
               }catch(SQLException e){
            out.println("The error is "+e.getMessage());
            }
            }catch(ClassNotFoundException e){
               out.println("The error is "+e.getMessage()); 
            }
            
            out.println("</body>");
            out.println("</html>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
