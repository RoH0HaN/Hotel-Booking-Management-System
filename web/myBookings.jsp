<%-- 
    Document   : myBookings
    Created on : 24-Nov-2022, 5:11:31 PM
    Author     : mysterio
--%>

<%@page import="com.hotel.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookings | My Hotel</title>
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
        <div class="container">
            <center><u>
                    <h1>My Bookings</h1>
                </u></center>
        </div>
        <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
        <sql:query dataSource="${con}" var="rs">select * from booking where email='<%=user.getEmail()%>';</sql:query>


            <div class="container" style="height: 40vh;">
                <table class="table mt-5 table-bordered table-responsive-sm table-responsive-md">
                    <thead class="thead-light">
                        <tr class="table-primary">
                            <th scope="col">Booking no.</th>
                            <th scope="col">Moblie Number</th>
                            <th scope="col">Email</th>
                            <th scope="col">Status</th>
                            <th scope="col">Remarks</th>
                            <th scope="col">Recipt</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${rs.rows}" var="row">
                        <tr class="table-primary">
                            <td>${row.id}</td>
                            <td>${row.phone}</td>
                            <td>${row.email}</td>
                            <td>${row.status}</td>
                            <td>${row.remarks}</td>
                            <c:choose>
                                <c:when test="${row.status == 'Pending'}">
                                    <td>Pending</td>
                                </c:when>
                                <c:otherwise>
                                    <td><button onclick="window.location.href = 'getBill.jsp?uid=${row.user_id}&rid=${row.room_id}&bid=${row.id}';" class="btn btn-primary">Get Bill</button></td>
                                </c:otherwise>
                            </c:choose>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div><%@include file="footer.jsp" %></div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script src="js/navbar.js"></script>
    </body>

</html>