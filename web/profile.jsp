<%-- 
    Document   : profile
    Created on : 28-Nov-2022, 12:34:29 PM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.hotel.entities.User"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile | My Hotel</title>
        <!-- jQuery library -->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <!-- Popper JS -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">
        
    </head>

    <body>
        <!--Navbar-->
        <div class="header" id="header">
            <nav class="mynav">
                <h3>&nbsp;My Hotel</h3>
                <ul id="sidemenu">
                    <li><a href="userHome.jsp"><span class="fas fa-home"></span>&nbsp;HOME</a></li>
                    <li><a href="gallary.jsp"><span class="far fa-images"></span>&nbsp;Gallery</a></li>
                    <li><a href="contact.jsp"><span class="fas fa-phone-volume"></span>&nbsp;Contact</a></li>
                    <li><a href="room.jsp"><span class="fas fa-door-open"></span>&nbsp;Room</a></li>
                        <%
                            User user = (User) session.getAttribute("currentUser");
                            if (user != null) {
                        %>
                    <li><a href="myBookings.jsp"><span class="fas fa-clipboard-check"></span>&nbsp;My Bookings</a></li>
                    <li><a href="profile.jsp"><span class="fas fa-user-alt"></span>&nbsp;<%= user.getName()%></a></li>
                    <li><a id="out-btn" href="#"><span class="fas fa-sign-out-alt"></span>&nbsp;Logout</a></li>
                        <%
                        } else {
                        %>
                    <li><a href="userForm.jsp"><span class="fas fa-sign-in-alt"></span>&nbsp;Login</a></li>
                        <%
                            }
                        %>
                    <i class="fas fas1 fa-bars" onclick="closemenu()"></i>
                </ul>
                <i class="fas fas1 fa-bars" onclick="openmenu()"></i>
            </nav>
        </div>
        <div class="mb-3 pt-5">
            <div class="container shadow p-5">
                <div class="row align-items-center">
                    <!-- Column 1-->
                    <div class="col-md-6">
                        <center>
                            <div class="container">
                                <%
                                    User u = (User) session.getAttribute("currentUser");
                                    if (u == null) {
                                        response.sendRedirect("userForm.jsp");
                                    }
                                %>
                                <div class="card shadow rounded" style="width: 18rem;">
                                    <img class="card-img-top" src="profile/<%=u.getProfileImage()%>" alt="Profile image">
                                    <div class="card-body">
                                        <h5 class="card-title">Name :</h5>
                                        <p class="card-text"><%= u.getName()%></p>
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Email :
                                            <p class="card-text"><%= u.getEmail()%></p>
                                        </li>
                                    </ul>
                                    <div class="card-body">
                                        <a href="#contact" type="button" class="text-center btn btn-outline-dark btn-block"
                                           data-toggle="modal" data-target=".bd-example-modal-sm">Edit Profile</a>
                                    </div>
                                </div>
                            </div>
                        </center>
                    </div>
                    <!-- Column 1 -->

                    <!-- Column 2 -->
                    <div class="col-md-6 mt-5 d-block d-sm-block d-md-block">
                        <img src="image/picw2.svg" alt="tours pics" class="img-fluid">
                    </div>
                    <!-- Column 2 -->
                </div>
            </div>
        </div>


        <!-- Modal -->
        <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Profile</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form class="needs-validation" action="UpdateServlet" method="POST" id="update-form" enctype="multipart/form-data" novalidate>
                            <div class="form-row pl-5">
                                <div class="col-md-10 mb-3">
                                    <input name="name" type="text" class="form-control" id="validationCustom01"
                                           placeholder="Change your name" value="<%=user.getName()%>" required>
                                </div>
                            </div>
                            <div class="form-row pl-5">
                                <div class="col-md-10">
                                    <input name="email" type="email" class="form-control" id="validationCustom03"
                                           placeholder="Change Email" value="<%=user.getEmail()%>" required>
                                </div>
                            </div>
                            <div class="form-row mt-3 pl-5">
                                <div class="col-md-10">
                                    <input name="password" type="password" class="form-control" id="validationCustom04"
                                           placeholder="Change password" value="<%=user.getPassword()%>" required>
                                </div>
                            </div>
                            <div class="form-row pl-5">
                                <div class="form-group col-md-10">
                                    <label for="inputAddress "> Add image : </label>
                                    <input name="photo" type="file" value="x.jpeg" class="form-control"  required>
                                </div>
                            </div>
                            <center>
                                <div class="spinner-border" id="up-ldr" style="display: none;" role="status">
                                    <span class="sr-only">Loading...</span>
                                </div>
                                <br>
                                <button id="update-btn" type="submit" class="btn btn-primary butn">Update</button>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <script src="js/navbar.js"></script>
        <script src="js/profile.js"></script>
    </body>
    

</html>
