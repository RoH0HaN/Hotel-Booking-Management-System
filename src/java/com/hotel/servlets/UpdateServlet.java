package com.hotel.servlets;

import com.hotel.dao.UserDao;
import com.hotel.entities.User;
import com.hotel.helper.ConnectionProvider;
import com.hotel.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class UpdateServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            try {
//                String delPath = null;
                User usr = new User();
                int id = usr.getId();
                String Name = request.getParameter("name");
                String Email = request.getParameter("email");
                String Pass = request.getParameter("password");
                Part part = request.getPart("photo");
                String imageName = part.getSubmittedFileName();
                
                if(imageName == null){
                    imageName = usr.getProfileImage();
                }
                
                //Get the User from Session
                HttpSession s  = request.getSession();
                User user = (User) s.getAttribute("currentUser");
                String img = user.getProfileImage();
                user.setEmail(Email);
                user.setName(Name);
                user.setPassword(Pass);
                user.setProfileImage(imageName);
                
                //Updating Database
                UserDao userDao = new UserDao(ConnectionProvider.getConnection());
                
                if (userDao.updateUser(user)) {
                    String delPath = request.getRealPath("/")+"profile"+File.separator+img;
                    String upPath = request.getRealPath("/")+"profile"+File.separator+user.getProfileImage();
                    
                    if(Helper.deleteFile(delPath)){
                        if(Helper.saveFile(part.getInputStream(), upPath)){
                            out.print("done");
                        }
                    }
                } else {
                    out.print("error");
                }
                
                String Query = "update users set name=?, email=?, password=? ";
            } catch (Exception e) {
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
