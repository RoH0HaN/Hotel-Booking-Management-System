
package com.hotel.servlets;

import com.hotel.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@MultipartConfig
public class BookingServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
          
            try {
                String Name = request.getParameter("name");
                String Email = request.getParameter("email");
                String Phone = request.getParameter("phone");
                String idType = request.getParameter("idType");
                String idNumber = request.getParameter("idNumber");
                String Address = request.getParameter("address");
                String checkIn = request.getParameter("checkIn");
                String CheckOut = request.getParameter("checkOut");
                
                Connection con = ConnectionProvider.getConnection();
                String Query = "insert into booking(name, email, phone, identity, number, address, checkin, checkout, status) values(?,?,?,?,?,?,?,?,?)";
                
                PreparedStatement st = con.prepareStatement(Query);
                st.setString(1, Name);
                st.setString(2, Email);
                st.setString(3, Phone);
                st.setString(4, idType);
                st.setString(5, idNumber);
                st.setString(6, Address);
                st.setString(7, checkIn);
                st.setString(8, CheckOut);
                st.setString(9, "Pending");
                st.executeUpdate();
                
                out.print("done");
            } catch (Exception e) {
                e.printStackTrace();
            }
            
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
