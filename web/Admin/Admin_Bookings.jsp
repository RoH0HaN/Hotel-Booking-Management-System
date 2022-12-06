<%-- 
    Document   : Admin_Bookings
    Created on : 06-Dec-2022, 2:33:46 PM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Bookings</title>
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
                    <div class="container">
                        <center><u>
                                <h1>All Bookings</h1>
                            </u></center>
                    </div>

                    <div class="container">
                        <table class="table mt-5 table-bordered table-responsive-sm table-responsive-md">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Booking no.</th>
                                    <th scope="col">Moblie Number</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Booking no</td>
                                    <td>Mobile number</td>
                                    <td>Email</td>
                                    <td>Status</td>
                                    <td><button class="btn btn-primary" data-toggle="modal"
                                                data-target=".bd-example-modal-lg">View</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->


        <!-- modal -->
        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
             aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form class="p-5">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Name :</label>
                                <input type="email" class="form-control" id="inputEmail4" placeholder="Name"disabled>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">Email :</label>
                                <input type="email" class="form-control" id="inputPassword4" placeholder="Email"disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress2">Address :</label>
                            <input type="text" class="form-control" id="inputAddress2" placeholder="Show Address"disabled>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Phone number :</label>
                                <input type="text" class="form-control" id="inputAddress" placeholder="Phone number"disabled>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Card type :</label>
                                <input type="text" class="form-control" id="inputAddress" placeholder="Card type"disabled>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Card number :</label>
                                <input type="text" class="form-control" id="inputAddress" placeholder="Card number"disabled>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress "> Check In : </label>
                                <input type="date" class="form-control" id="validationCustom05" placeholder="City" disabled>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputAddress "> Check Out : </label>
                                <input type="date" class="form-control" id="validationCustom05" placeholder="City" disabled>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Aprove</button>
                        <button type="submit" class="btn btn-primary">Reject</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/Admin_Dashboard.js"></script>
    </body>

</html>