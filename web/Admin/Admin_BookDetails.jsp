<%-- 
    Document   : Admin_BookDetails
    Created on : 07-Dec-2022, 11:57:11 AM
    Author     : mysterio
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.hotel.helper.ConnectionProvider"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <i class="fa-solid fa-times" onclick="closemenu()"></i>
                    </ul>
                    <i class="fa-solid fa-bars" onclick="openmenu()"></i>
                </nav>
            </div>
        </div>


        <!--Start Java Code-->
        <%
            String bid = request.getParameter("bid");
            String rid = request.getParameter("rid");
            String uid = request.getParameter("uid");

//            String pending = null, canceled = null, approve = null;
//            String query = "SELECT status, COUNT(*) FROM booking GROUP BY status";
//            Statement st = ConnectionProvider.getConnection().createStatement();
//            ResultSet set = st.executeQuery(query);
//            if (set.next()) {
//                canceled = set.getString("count");
//                if (set.next()) {
//                    pending = set.getString("count");
//                    if (set.next()) {
//                        approve = set.getString("count");
//                    }
//                }
//            }

        %>
        <!--End Java Code-->




        <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
        <sql:query dataSource="${con}" var="rs">select * from booking, users where booking.id=<%= bid%> and users.id='<%= uid%>';</sql:query>
            <!-- CONTENT -->
            <section id="content">
                <!-- MAIN -->
                <main>
                    <div class="head-title">
                        <div class="left">
                            <h1>View Booking Details</h1>
                        </div>
                    </div>
                    <div class="container">
                        <table class="table table-striped">
                        <c:forEach items="${rs.rows}" var="row">
                            <tr class="text-center bg-success text-white">
                                <th scope="col" colspan="4">Booking ID : <%= bid%></th>
                            </tr>
                            <tr>
                                <th scope="row">Customer Name</th>
                                <td>${row.name}</td>
                                <th>Mobile Number</th>
                                <td>${row.phone}</td>
                            </tr>
                            <tr>
                                <th scope="row">Email</th>
                                <td>${row.email}</td>
                                <th>ID Type</th>
                                <td>${row.identity}</td>
                            </tr>
                            <tr>
                                <th colspan="2" scope="row">Address</th>
                                <td colspan="2">${row.address}</td>
                            </tr>
                            <tr>
                                <th scope="row">Check In Date</th>
                                <td>${row.checkin}</td>
                                <th>Check Out Date</th>
                                <td>${row.checkout}</td>
                            </tr>

                            <sql:query dataSource="${con}" var="rs2">select * from room where id=<%= rid%>;</sql:query>
                            <c:forEach items="${rs2.rows}" var="row2">
                                <!--Statring Room Details-->
                                <tr class="text-center bg-success text-white">
                                    <th scope="col" colspan="4">Room Details</th>
                                </tr>
                                <tr>
                                    <th scope="row">Room Type</th>
                                    <td>${row2.type}</td>
                                    <th>Room Price(Per Night)</th>
                                    <td>${row2.rent}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Room Name</th>
                                    <td>${row2.name}</td>
                                    <th>Max Adults : ${row2.adult}</th>
                                    <th>Max Childs : ${row2.child}</th>
                                </tr>
                                <tr>
                                    <th scope="row">Room Description</th>
                                    <td colspan="3">${row2.details}</td>
                                </tr>
                                <tr>
                                    <th scope="row">No of Bed</th>
                                    <td>${row2.no_bed}</td>
                                    <th>Room Image</th>
                                    <td>####</td>
                                </tr>
                                <tr>
                                    <th scope="row">Room Facility</th>
                                    <td>24Hr Room Service</td>
                                    <th>Booking Date</th>
                                    <td>${row.created_at}</td>
                                </tr>
                                <!--End Room Details-->
                                <!--Start Admin Remark-->
                                <tr class="text-center bg-success text-white">
                                    <th scope="row" colspan="4">Admin Remark</th>
                                </tr>
                                <tr>
                                    <th scope="row">Order Final Satus</th>
                                    <td>${row.status}</td>
                                    <th>Admin Remarks</th>
                                    <td>${row.remarks}</td>
                                </tr>
                                <c:if test="${row.status == 'Pending'}">
                                    <tr class="text-center">
                                        <th scope="row" colspan="4"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                                Action
                                            </button></th>
                                    </tr>
                                </c:if>
                            </c:forEach>
                        </c:forEach>
                    </table>

                </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Action Form</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="../OrderActionServlet" method="POST" id="order-form">
                                    <div class="form-group">
                                        <label for="exampleFormControlInput1">Remarks</label>
                                        <input name="remarks" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Admin Remarks">
                                    </div>
                                    <div class="form-group" style="display: none;">
                                        <input name="bookingid" type="text" class="form-control" id="exampleFormControlInput1" value="<%= bid%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Order Final Status</label>
                                        <select name="status" class="form-control" id="exampleFormControlSelect1">
                                            <option>Approved</option>
                                            <option>Canceled</option>
                                        </select>
                                    </div>
                                    <button id="order-btn" type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script src="js/Admin_Dashboard.js"></script>
        <!--<script src="js/Admin_OrderAction.js"></script>-->
    </body>

</html>