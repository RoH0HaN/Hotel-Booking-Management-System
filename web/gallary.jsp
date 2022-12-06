<%-- 
    Document   : gallary
    Created on : 01-Dec-2022, 12:19:26 PM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Shuffle Gallery</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/gallery.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">
    </head>

    <body>
        <div><%@include file="navbar.jsp" %></div>
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
    </body>

</html>
