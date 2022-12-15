<%-- 
    Document   : MessageRequests
    Created on : 15-Dec-2022, 3:24:54 pm
    Author     : rohan
--%>

<%@page import="com.hotel.entities.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message Request</title>
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
        <%
            Admin admin = (Admin) session.getAttribute("currentAdmin");
            if (admin == null) {
                response.sendRedirect("Admin_Login.jsp");
            }
        %>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#"><b>Admin Dashboard</b></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Admin_Dashboard.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Admin_addrooms.jsp">Add Room</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Admin_Bookings.jsp">Bookings</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Check In/Out
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="CheckIn.jsp">Check In</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="CheckOut.jsp">Check Out</a>             
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Admin_BookHistory.jsp">Book History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="MessageRequests.jsp">Message Requests</a>
                    </li>

                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <button id="out-btn" class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
                </form>
            </div>
        </nav>

        <div class="card">
            <div class="card-header">
                <%if (admin != null) {%>
                <p><b>Welcome, Admin</b> <%= admin.getName()%></p>
                <p><b>Email :</b> <%= admin.getEmail()%></p>
                <%
                    }
                %>
            </div>
            <div class="card-body">
                <blockquote class="blockquote mb-0 text-center">
                    <h1>Message Requests</h1>
                    <h5>All Message Requests are Listed Below</h5>
                </blockquote>
            </div>
        </div>
        <br>
        <div class="container">
            <div class="container text-center">
                <button id="unread" type="button" class="btn btn-primary btn-lg">Unread</button>
                <span style="margin-left: 25px; margin-right: 25px;">|</span>
                <button id="read" type="button" class="btn btn-success btn-lg">Read</button>
            </div>
        </div>
        <div id="read-div" class="container">
            <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
            <sql:query dataSource="${con}" var="rs2">select * from contact where status='Read';</sql:query>
                <table class="table mt-5 table-bordered table-responsive-sm table-responsive-md">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Message</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${rs2.rows}" var="row2">
                        <tr>
                            <td>${row2.firstname}</td>
                            <td>${row2.lastname}</td>
                            <td>${row2.email}</td>
                            <td>${row2.phone}</td>
                            <td>${row2.message}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div id="unread-div" class="container">
            <sql:query dataSource="${con}" var="rs">select * from contact where status='Unread';</sql:query>
                <table class="table mt-5 table-bordered table-responsive-sm table-responsive-md">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Message</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${rs.rows}" var="row">
                        <tr>
                            <td>${row.firstname}</td>
                            <td>${row.lastname}</td>
                            <td>${row.email}</td>
                            <td>${row.phone}</td>
                            <td>${row.message}</td>
                            <td><button onclick="window.location.href = '../ReadMessageServlet?id=${row.id}';" class="btn btn-success">Read Now</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <script>
            $(document).ready(function () {
                $('#unread-div').show();
                $('#read-div').hide();
                $('#read').click(function () {
                    $('#unread-div').hide();
                    $('#read-div').show();
                })
                $('#unread').click(function () {
                    $('#unread-div').show();
                    $('#read-div').hide();
                })
            });
        </script>
    </body>
</html>
