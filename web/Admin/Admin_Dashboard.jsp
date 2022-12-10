<%-- 
    Document   : Admin_Dashboard
    Created on : 06-Dec-2022, 2:31:12 PM
    Author     : mysterio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.hotel.helper.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style.css">

        <title>AdminHub</title>
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
                <div class="head-title">
                    <div class="left">
                        <h1>Dashboard</h1>
                    </div>
                </div>

                <div class="container">
                    <div class="container m-5 p-5 rounded">
                        <div class="row ">

                            <%
                                String pending = null, canceled = null, approve = null;
                                String query = "SELECT status, COUNT(*) FROM booking GROUP BY status";
                                Statement st = ConnectionProvider.getConnection().createStatement();
                                ResultSet set = st.executeQuery(query);
                                if (set.next()) {
                                    canceled = set.getString("count");
                                    if (set.next()) {
                                        pending = set.getString("count");
                                        if (set.next()) {
                                            approve = set.getString("count");
                                        }
                                    }
                                }
                            %>

                            <div class="col-sm shadow">
                                <i class="fa-solid fa-check p-2"></i>
                                New Bookings
                                <h4 class="pl-5 m-3"><%= pending%></h4>
                            </div>
                            <div class="col-sm shadow">
                                <i class="fa-solid fa-person-circle-check p-2"></i>
                                Approved Bookings
                                <h4 class="pl-5 m-3"><%= approve%></h4>
                            </div>
                            <div class="col-sm shadow">
                                <i class="fa-solid fa-ban p-2"></i>
                                Cancelled Bookings
                                <h4 class="pl-5 m-3"><%= canceled%></h4>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container mb-5">
                    <div class="container">
                        <center><u>
                                <h1>Recent Bookings</h1>
                            </u></center>
                    </div>

                    <div class="container">
                        <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
                        <sql:query dataSource="${con}" var="rs">select * from booking where status='Pending';</sql:query>
                        <table class="table mt-5 table-bordered table-responsive-sm table-responsive-md">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Name</th>
                                    <th scope="col">Booking no.</th>
                                    <th scope="col">Moblie Number</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${rs.rows}" var="row">
                                <tr>
                                    <td>${row.name}</td>
                                    <td>${row.id}</td>
                                    <td>${row.phone}</td>
                                    <td>${row.email}</td>
                                    <td>${row.status}</td>
                                    <td><button onclick="window.location.href='Admin_BookDetails.jsp?uid=${row.user_id}&rid=${row.room_id}&bid=${row.id}';" class="btn btn-primary">View</button></td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script src="js/Admin_Dashboard.js"></script>
    </body>

</html>