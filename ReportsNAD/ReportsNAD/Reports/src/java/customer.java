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
public class customer extends HttpServlet {

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
            out.println("<title>Servlet customer</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            
            try{
            Connection co = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/manager","root","");
            Statement st= co.createStatement();
            
               ResultSet rs=st.executeQuery("select * from customers");
               out.println("<a href='/Reports/Sales'>View Sales made</a>");
               
               out.println("<br><a href='/Reports/Saveuser'>Log out</a>");
               
               out.println("<h1> customerDetails</h1>");
               
             out.println("<table>"
                    + "<tr>"
                    + "<th>customername</th>"
                     + "<th>productsname</th>"
                     + "<th>customerslocation</th>"
                     + "<th>quantityneeded</th>"
                    + "</tr>");
            while(rs.next()){
                out.println("<tr>"
                        + "<td>"+rs.getString("customername")+"</td>"
                        + "<td>"+rs.getString("productsname")+"</td>"        
                         + "<td>"+rs.getString("customerslocation")+"</td>"       
                         + "<td>"+rs.getString("quantityneeded")+"</td>"       
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
