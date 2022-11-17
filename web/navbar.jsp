<%@page import="com.hotel.entities.User"%>
<%
    User user = (User) session.getAttribute("currentUser");
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-mainbg">
    <!-- Logo -->
    <a class="navbar-brand navbar-logo" href="#">My Hotel</a>
    <!-- Collapse Button -->
    <button 
        class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
    </button>
    <!-- Links -->
    <div 
        class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <!-- For Styling -->
            <div class="hori-selector">
                <div class="left"></div>
                <div class="right"></div>
            </div>
            <!-- Nav Links -->
            <li class="nav-item active">
                <a 
                    class="nav-link" href="home.jsp">
                    <i 
                        class="fas fa-tachometer-alt">
                    </i>Home
                </a>
            </li>
            <li class="nav-item ">
                <a 
                    class="nav-link" href="#Address">
                    <i 
                        class="far fa-address-book">
                    </i>About us
                </a>
            </li>
            <li class="nav-item">
                <a 
                    class="nav-link" href="#Calender">
                    <i 
                        class="far fa-calendar-alt">
                    </i>Contact
                </a>
            </li>
            <li class="nav-item">
                <a 
                    class="nav-link" href="#Charts">
                    <i 
                        class="far fa-chart-bar">
                    </i>Rooms
                </a>
            </li>
            <%
                if (user != null) {
            %>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="far fa-copy">
                    </i><%= user.getName()%>
                </a>
            </li>
            <li class="nav-item">
                <a id="logout-btn" 
                   class="nav-link" href="#">
                    <i class="far fa-copy">
                    </i>Logout
                </a>
            </li>
            <%
                }else{
            %>
            <li class="nav-item">
                <a target="_blank" 
                   class="nav-link" href="userForm.jsp">
                    <i class="far fa-copy">
                    </i>Login
                </a>
            </li>
            <%
                }
            %>
        </ul>
    </div>
</nav>
<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<!-- Custom Script -->
<script src="js/navbar.js"></script>