<%-- 
    Document   : room
    Created on : 23-Nov-2022, 10:50:18 PM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <title>Hotel Booking Website</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />

        <link rel="stylesheet" href="css/room.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/navbar.css">

    </head>

    <body>
        <div><%@include file="navbar.jsp" %></div>
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
                            <a href="#contact" class="text-center btn btn-outline-dark btn-lg btn-block">Contact Us</a>
                        </div>
                    </div>
                    <!-- Column 1 -->

                    <!-- Column 2 -->
                    <div class="col-md-6 d-none d-sm-none d-md-block">
                        <img src="roomPictures/logo.svg" alt="tours pics" class="img-fluid">
                    </div>
                    <!-- Column 2 -->
                </div>
            </div>
        </div>

        <section class="offer mtop" id="services">
            <div class="container">
                <h1>Single Room</h1>
                <div class="content grid2 mtop">


                    <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
                    <sql:query dataSource="${con}" var="rs">select * from room where type='Single Bedroom';</sql:query>

                    <c:forEach items="${rs.rows}" var="row">
                        <div class="box flex">
                            <div class="left">
                                <img src="roomPictures/${row.image}" alt="">
                            </div>
                            <div class="right">
                                <h4>${row.type}</h4>
                                <p>${row.details}</p>
                                <h5>From ₹ ${row.rent}/night</h5>
                                <a href="booking.jsp?id=${row.id}" class="flex1 btn btn-info">
                                    <span class="fas fa-arrow-circle-right">&nbsp;Book</span>
                                </a>
                            </div>
                        </div>

                    </c:forEach>

                </div>
            </div>
        </section>
        <section class="offer mtop" id="services">
            <div class="container">
                <h1>Double Room</h1>
                <div class="content grid2 mtop">

                    <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
                    <sql:query dataSource="${con}" var="rs">select * from room where type='Double Bedroom';</sql:query>

                    <c:forEach items="${rs.rows}" var="row">
                        <div class="box flex">
                            <div class="left">
                                <img src="roomPictures/${row.image}" alt="">
                            </div>
                            <div class="right">
                                <h4>${row.type}</h4>
                                <p>${row.details}</p>
                                <h5>From ₹ ${row.rent}/night</h5>
                                <a href="" class="flex1 btn btn-info">
                                    <span class="fas fa-arrow-circle-right">&nbsp;Book</span>
                                </a>
                            </div>
                        </div>

                    </c:forEach>

                </div>
            </div>
        </section>


        <section class="map top">
            <div class="mapouter">
                <div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas"
                                                 src="https://maps.google.com/maps?q=kolkata&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
                                                 scrolling="no" marginheight="0" marginwidth="0"></iframe><a
                        href="https://fmovies-online.net"></a><br>
                </div>
            </div>
        </section>
        <div><%@include file="footer.jsp" %></div>
        <!-- Scripts -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
        <!-- Custom Script -->
    </body>


</html>