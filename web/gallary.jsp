<%-- 
    Document   : gallary
    Created on : 01-Dec-2022, 12:19:26 PM
    Author     : mysterio
--%>

<%@page import="com.hotel.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gallery | My Hotel</title>
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
        <link rel="stylesheet" href="css/gallery.css">
        
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
        <div class="pt-5">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Column 2 -->
                    <div class="col-md d-block d-sm-block d-md-block justify-content-center">
                        <div class="tab-titles justify-content-center">
                            <p class="tab-links active-link" onclick="show()">All</p>
                            <p class="tab-links" onclick="show1()">Single Room</p>
                            <p class="tab-links" onclick="show2()">Double Room</p>
                        </div>
                        <div class="tab-contents active-tab text-center shadow" id="all">
                            <ul>
                                <div class="row p-3 m-5">
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/279746/pexels-photo-279746.jpeg?auto=compress&cs=tinysrgb&w=1000" alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000" alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000" alt="">
                                    </div>
                                </div>
                                <div class="row p-3 m-5">
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000" alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000" alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000" alt="">
                                    </div>
                                </div>
                            </ul>
                        </div>
                        <div class="tab-contents  text-center shadow" id="singlebed">
                            <ul>
                                <div class="row p-3 m-5">
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                </div>
                                <div class="row p-3 m-5">
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3  hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                </div>
                            </ul>
                        </div>
                        <div class="tab-contents text-center shadow" id="doublebed">
                            <ul>
                                <div class="row p-3 m-5">
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                </div>
                                <div class="row p-3 m-5">
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                    <div class="col-sm p-3 hk shadow">
                                        <img src="https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1000"
                                             alt="">
                                    </div>
                                </div>
                            </ul>
                        </div>
                    </div>
                    <!-- Column 2 -->
                </div>
            </div>
        </div>
        <div><%@include file="footer.jsp" %></div>
        <script src="js/gallery.js"></script>
        <script src="js/navbar.js"></script>
    </body>

</html>
