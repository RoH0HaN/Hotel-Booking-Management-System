/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.hotel.servlets;

import com.hotel.helper.ConnectionProvider;
import com.hotel.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class AddRoomServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            try {
                String rName = request.getParameter("name");
                String rRent = request.getParameter("rent") + ".00";
                String rType = request.getParameter("roomType");
                String rDetails = request.getParameter("details");
                Part part = request.getPart("photo");
                String rImageName = part.getSubmittedFileName();

                Connection con = ConnectionProvider.getConnection();
                String Query = "insert into room(type, rent, details, image, name, adult, child, no_bed) values(?,?,?,?,?,?,?,?)";

                PreparedStatement st = con.prepareStatement(Query);
                st.setString(1, rType);
                st.setString(2, rRent);
                st.setString(3, rDetails);
                st.setString(4, rImageName);
                st.setString(5, rName);
                if (rType.equals("Single Bedroom")) {
                    st.setInt(6, 1);
                    st.setInt(7, 1);
                    st.setInt(8, 1);
                } else {
                    st.setInt(6, 2);
                    st.setInt(7, 2);
                    st.setInt(8, 2);
                }
                String upPath = request.getRealPath("" + File.separator) + "roomPictures" + File.separator + rImageName;
                if (Helper.saveRoomPicture(part.getInputStream(), upPath)) {
                    st.executeUpdate();
                    out.print("done");
                }else{
                    out.print("error");
                }

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
