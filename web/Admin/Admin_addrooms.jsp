<%-- 
    Document   : Admin_addrooms
    Created on : 06-Dec-2022, 2:37:41 PM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Add Rooms</title>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <script src="https://kit.fontawesome.com/14d362f720.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        <div class="headernav" id="header">
            <div class="navcontainer">
                <nav class="navcss">
                    <h3>Admin Dashboard</h3>
                    <ul id="sidemenu">
                        <li><a href="Admin_Dashboard.jsp">Dashboard</a></li>
                        <li><a href="Admin_addrooms.jsp">Addrooms</a></li>
                        <li><a href="Admin_Bookings.jsp">Bookings</a></li>
                        <i class="fa-solid fa-times" onclick="closemenu()"></i>
                    </ul>
                    <i class="fa-solid fa-bars" onclick="openmenu()"></i>
                </nav>
            </div>
        </div>




        <!-- CONTENT -->
        <section id="content">
            <!-- MAIN -->
            <main>
                <div class="container mb-5">
                    <h1><u>Single Room</u></h1>
                    <div class="row align-items-center">
                        <!-- Column 1-->
                        <div class="col-md-6">
                            <img src="pics/pic1.svg" alt="img" class="img-fluid">
                        </div>
                        <!-- Column 1 -->

                        <!-- Column 2 -->
                        <div class="col-md-6 d-block d-sm-block d-md-block">
                            <form class="needs-validation" id="form" novalidate>
                                <div class="form-row">
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" id="validationCustom01"
                                               placeholder="Room Price" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="inputAddress" placeholder="Details"
                                           required>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputAddress "> Add image : </label>
                                        <input type="file" class="form-control" placeholder="Image" required>
                                    </div>
                                </div>
                                <center>
                                    <div class="btn">
                                        <button type="submit" onclick="Check()" class="btn btn-primary butn">Add
                                            Room</button>
                                    </div>
                                </center>
                            </form>
                        </div>
                        <!-- Column 2 -->
                    </div>
                </div>
                <div class="container mt-5 pt-5">
                    <div class="container mt-5 pt-5">
                        <h1><u>Double Room</u></h1>
                        <div class="row align-items-center">
                            <!-- Column 1-->
                            <div class="col-md-6">
                                <img src="pics/pic1.svg" alt="img" class="img-fluid">
                            </div>
                            <!-- Column 1 -->

                            <!-- Column 2 -->
                            <div class="col-md-6 d-block d-sm-block d-md-block">
                                <form class="needs-validation" id="form" novalidate>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <input type="text" class="form-control" id="validationCustom01"
                                                   placeholder="Room Price" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="inputAddress" placeholder="Details"
                                               required>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputAddress "> Add image : </label>
                                            <input type="file" class="form-control" placeholder="Image" required>
                                        </div>
                                    </div>
                                    <center>
                                        <div class="btn">
                                            <button type="submit" onclick="Check()" class="btn btn-primary butn">Add
                                                Room</button>
                                        </div>
                                    </center>
                                </form>
                            </div>
                            <!-- Column 2 -->
                        </div>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script src="js/Admin_Dashboard.js"></script>
    </body>
</html>
