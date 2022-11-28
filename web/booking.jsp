<%-- 
    Document   : booking
    Created on : 23-Nov-2022, 5:41:19 PM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <!-- Style.css -->
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/booking.css">
    </head>

    <div><%@include file="navbar.jsp" %></div>
    <%        String id = request.getParameter("id");
    %>
    <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
    <sql:query dataSource="${con}" var="rs">select * from room where id='<%= id%>';</sql:query>
    <c:forEach items="${rs.rows}" var="row">
        <div class="mt-5 pt-5">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Column 1-->
                    <div class="col-md-6 d-none d-sm-none d-md-block">
                        <img src="roomPictures/${row.image}" alt="Room image" class="img-fluid rounded">
                    </div>
                    <!-- Column 1 -->

                    <!-- Column 2 -->
                    <div class="col-md-6">
                        <h1 class="mb-4 font-weight-bold">
                            <span class="text-info">Lincoln Room</span>
                        </h1>
                        <h5>From ₹${row.rent}/night</h5>
                        <p class="mb-4 pb-2 ">
                            ${row.details}
                        </p>
                        <div>
                            <a href="#contact" type="button" class="text-center btn btn-outline-dark btn-lg btn-block"
                               data-toggle="modal" data-target="#exampleModal">Book Now</a>
                        </div>
                    </div>
                    <!-- Column 2 -->
                </div>
            </div>
        </div>

        <!-- ------about------ -->
        <div class="about" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-about-1">
                        <img src="roomPictures/${row.image}" class="img" alt="">
                    </div>

                    <div class="col-about-2">
                        <h1 class="subtitle">About Room</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam dolores blanditiis modi quod
                            quidem debitis suscipit dolorem quia excepturi, itaque consequatur minima molestias voluptas,
                            odio veritatis pariatur ipsam quaerat. Blanditiis quibusdam et adipisci consequatur repudiandae
                            debitis sequi nesciunt ex accusantium.</p>
                        <div class="tab-titles">
                            <p class="tab-links active-link" onclick="show()">Room Description</p>
                            <p class="tab-links" onclick="show1()">Amnetics</p>
                            <p class="tab-links" onclick="show2()">House Rules</p>
                        </div>
                        <div class="tab-contents active-tab" id="rdes">
                            <ul>
                                <li><span>Max Adult </span><br>2</li>
                                <li><span>Max Child </span><br>2</li>
                                <li><span>Room Facality </span><br> 24hr Room service</li>
                            </ul>
                        </div>
                        <div class="tab-contents" id="ame">
                            <ul>
                                <li><span> Air condition </span></li>
                                <li><span> Gym </span></li>
                                <li><span> Parking </span></li>
                                <li><span> Use Of pool </span></li>
                                <li><span> Free WIFI </span></li>
                                <li><span> Room Service </span></li>
                            </ul>
                        </div>
                        <div class="tab-contents" id="hrule">
                            <ul>
                                <li><span>Check in </span><br>10:00 am to 7:00 pm</li>
                                <li><span>Check out </span><br>11:00 am</li>
                                <li><span>Hotel Rules </span><br> No smoking , No pet , No parties or event</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Booking Form</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="BookingServlet" method="POST" id="book-form">
                            <div class="form-group">
                                <input name="name" placeholder="Full Name" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <input name="email" placeholder="Email" type="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <input name="phone" placeholder="Phone Number" type="tel" class="form-control">
                            </div>
                            <div class="form-group">
                                <select name="idType" class="form-control" required>
                                    <option disabled>!--Select Id Type--!</option>
                                    <option>Voter card</option>
                                    <option>Aadhar Card</option>
                                    <option>Pan card</option>
                                    <option>Passport</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input name="idNumber" placeholder="ID Card Number" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <input name="address" placeholder="Address" type="text" class="form-control">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress "> Check In : </label>
                                    <input name="checkIn" type="date" class="form-control" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputAddress "> Check Out : </label>
                                    <input name="checkOut" type="date" class="form-control" required>
                                </div>
                            </div>
                            <center>
                                <div id="ldr" class="spinner-border" style="display: none;" role="status"></div>
                                <button id="sbmt-btn" type="submit" class="btn btn-primary">Submit</button>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    <%@include file="footer.jsp" %>

    <!-- Custom Script -->
    <script src="js/booking.js"></script>

</html>
