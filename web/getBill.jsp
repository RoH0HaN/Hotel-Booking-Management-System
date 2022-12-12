<%-- 
    Document   : bookDetails
    Created on : 12-Dec-2022, 12:12:03 PM
    Author     : mysterio
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Receipt | My Hotel</title>
        <!-- jQuery library -->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <!-- Popper JS -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/PrintArea/2.4.1/jquery.PrintArea.js" integrity="sha512-GhQdBWSddrd8ijiuwA0LZ7ppPcPrJOZAtGMOmgO/371vPNUNm/mKdNc13T/2UWLp5vLIcaDvh/9NwCRZAdxgFw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </head>
    <body>
        <%
            String bid = request.getParameter("bid");
            String rid = request.getParameter("rid");
            String uid = request.getParameter("uid");
        %>
        <sql:setDataSource driver="org.postgresql.Driver" url="jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres" user="postgres" password="Roh@n8145312848" var="con"></sql:setDataSource>
        <sql:query dataSource="${con}" var="rs">select * from booking, users where booking.id=<%= bid%> and users.id='<%= uid%>';</sql:query>
            <div class="r-print">
                <div class="container">
                    <center><h1>Computer Generated Receipt</h1></center>
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
                                <td><img height="20px" width="20px" src="roomPictures/${row2.image}" alt=""></td>
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
                            <tr class="text-center">
                                <th scope="row" colspan="4"><button id="p-btn" class="btn btn-primary">
                                        Print
                                    </button></th>
                            </tr>
                        </c:forEach>
                    </c:forEach>
                </table>

            </div>
        </div>
        <script>
            $(document).ready(function () {

                $('#p-btn').click(function () {
                    var mode = 'iframe';
                    var close = mode == "popup";
                    var options = {mode: mode, popClose: close};
                    $("div.r-print").printArea(options);
                })
            });
        </script>
    </body>
</html>
