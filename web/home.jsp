<%-- 
    Document   : home
    Created on : 23-Nov-2022, 10:40:01 PM
    Author     : mysterio
--%>

<%@page import="com.hotel.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home | My Hotel</title>
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
        <link rel="stylesheet" href="css/home.css">
        
    </head>

    <body>
        <!--Navbar-->
        <div class="header" id="header">
            <nav class="mynav">
                <h3>&nbsp;My Hotel</h3>
                <ul id="sidemenu">
                    <li><a href="home.jsp"><span class="fas fa-home"></span>&nbsp;HOME</a></li>
                    <li><a href="gallary.jsp"><span class="far fa-images"></span>&nbsp;Gallery</a></li>
                    <li><a href="contact.jsp"><span class="fas fa-phone-volume"></span>&nbsp;Contact</a></li>
                    <li><a href="room.jsp"><span class="fas fa-door-open"></span>&nbsp;Room</a></li>
                        
                    <li><a href="userForm.jsp"><span class="fas fa-sign-in-alt"></span>&nbsp;Login</a></li>
                        
                    <i class="fas fas1 fa-bars" onclick="closemenu()"></i>
                </ul>
                <i class="fas fas1 fa-bars" onclick="openmenu()"></i>
            </nav>
        </div>
        <!-- Home section  -->
        <div class="mt-5 pt-5">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Column 1-->
                    <div class="col-md-6">
                        <h1 class="mb-4 font-weight-bold">Welcome to
                            <span class="text-info">My Hotel</span><br>Don’t just dream of a vacation. Just do it!
                        </h1>
                        <p class="mb-4 pb-2 ">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam vitae, culpa qui officia
                            deserunt
                            laborum fuga similique mollit id quos aperiam proident non ut rerum debitis.
                        </p>
                        <div>
                            <a href="contact.jsp" class="text-center btn btn-outline-dark btn-lg btn-block">Contact Us</a>
                        </div>
                    </div>
                    <!-- Column 1 -->

                    <!-- Column 2 -->
                    <div class="col-md-6 d-none d-sm-none d-md-block">
                        <img src="image/Outdoor Camp.svg" alt="tours pics" class="img-fluid">
                    </div>
                    <!-- Column 2 -->
                </div>
            </div>
        </div>
        <div class="container facility">
            <center>
                <h1><u>Our Facilities</u></h1>
            </center>
            <div class="row divbg">
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/food.svg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Food and Beverages</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/room service.svg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">24 Hr Room Service</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/security.svg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">24 Hour Security</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row divbg">
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/wifi.svg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Free wireless internet acesss</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/car parking.svg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Car parking</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                the card's content.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="image/doctor.svg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">24 Hr doctor on call</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                the card's content.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <center>
                    <h1><u>Our Employees</u></h1>
                </center>
                <div class="row divbg">
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="image/profile2.svg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Suman Mondal</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                    the card's content.</p>
                            </div>
                            <div class="middle">
                                <div class="text">Hotel Director</div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="image/profile3.svg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Zunaid Ahammed</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                    the card's content.</p>
                            </div>
                            <div class="middle">
                                <div class="text">Hotel Director</div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="image/profile2.svg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Rohan Debnath</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                                    the card's content.</p>
                            </div>
                            <div class="middle">
                                <div class="text">Hotel Director</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div><%@include file="footer.jsp" %></div>
        <!-- Custom Script -->
        <script src="js/navbar.js"></script>
    </body>

</html>
