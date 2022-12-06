<%@page import="com.hotel.entities.User"%>
<%
    User user = (User) session.getAttribute("currentUser");
%>

<div class="header" id="header">
    <nav class="mynav">
        <h3>&nbsp;My Hotel</h3>
        <ul id="sidemenu">
            <li><a href="home.jsp"><span class="fas fa-home"></span>&nbsp;HOME</a></li>
            <li><a href="gallary.jsp"><span class="far fa-images"></span>&nbsp;Gallery</a></li>
            <li><a href="contact.jsp"><span class="fas fa-phone-volume"></span>&nbsp;Contact</a></li>
            <li><a href="room.jsp"><span class="fas fa-door-open"></span>&nbsp;Room</a></li>
                <%
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
<script>
    $(document).ready(function () {
        console.log("Navbar Loaded....")
        $('#out-btn').click(function () {
            swal("Thank You!", "Logged Out Successfully.", "success")
                    .then((value) => {
                        window.location = "LogoutServlet"
                    });
        })
    });
</script>
<script src="js/navbar.js"></script>