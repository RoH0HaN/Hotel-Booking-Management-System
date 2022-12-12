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
        <title>Add Rooms</title>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <script src="https://kit.fontawesome.com/14d362f720.js" crossorigin="anonymous"></script>
        <!-- jQuery library -->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>

        <!-- Popper JS -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
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
                        <li><a id="out-btn" href="#">Logout</a></li>
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
                    <h1><u>Add Rooms to Hotel</u></h1>
                    <div class="row align-items-center">
                        <!-- Column 1-->
                        <div class="col-md-6">
                            <img src="pics/pic1.svg" alt="img" class="img-fluid">
                        </div>
                        <!-- Column 1 -->

                        <!-- Column 2 -->
                        <div class="col-md-6 d-block d-sm-block d-md-block">
                            <form action="../AddRoomServlet" enctype="multipart/form-data" method="POST" class="needs-validation" id="rup-form" novalidate>
                                <div class="form-row">
                                    <div class="col-md-6 mb-3">
                                        <input name="name" type="text" class="form-control" id="validationCustom01"
                                               placeholder="Room Name" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-6 mb-3">
                                        <input name="rent" type="text" class="form-control" id="validationCustom01"
                                               placeholder="Room Price" required>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-6 mb-3">
                                        <select name="roomType" class="form-control" required>
                                            <option disabled>!--Select Room Type--!</option>
                                            <option>Single Bedroom</option>
                                            <option>Double Bedroom</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input name="details" type="text" class="form-control" id="inputAddress" placeholder="Details"
                                           required>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-10">
                                        <label for="inputAddress "> Add image : </label>
                                        <input name="photo" type="file" value="x.jpeg" class="form-control"  required>
                                    </div>
                                </div>
                                <center>
                                    <button id="rup-btn" type="submit" class="btn btn-primary butn">Add Room</button>
                                </center>
                            </form>
                        </div>
                        <!-- Column 2 -->
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script src="js/Admin_Dashboard.js"></script>
        <script src="js/Admin_AddRoom.js"></script>
    </body>
</html>
