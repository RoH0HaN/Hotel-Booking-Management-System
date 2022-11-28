<%-- 
    Document   : myBookings
    Created on : 24-Nov-2022, 5:11:31 PM
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
        <!-- css from bootstrap  -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">
    </head>

    <body>
        <div><%@include file="navbar.jsp" %></div>
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
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${rs.rows}" var="row">
                            <tr class="table-primary">
                            <td>${row.id}</td>
                            <td>${row.phone}</td>
                            <td>${row.email}</td>
                            <td>${row.status}</td>
                            <td>Get Bill</td>
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
        </body>

    </html>