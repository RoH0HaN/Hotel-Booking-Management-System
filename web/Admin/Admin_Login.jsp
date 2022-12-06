<%-- 
    Document   : Admil_Login
    Created on : 06-Dec-2022, 2:06:40 PM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login Page</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
              integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/admin_login.css">
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
        <section>
            <div class="image">
                <img src="https://images.pexels.com/photos/1684151/pexels-photo-1684151.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
                     alt="">
            </div>
            <div class="cb">
                <div class="form">
                    <h2>Admin Login</h2>
                    <form id="log-form" action="../AdminLoginServelet" method="POST" class="form">
                        <div class="inputbox">
                            <!-- <span>Username</span> -->
                            <input class="inputitem" type="text" name="username" placeholder="Username" required autofocus>
                        </div>
                        <div class="inputbox">
                            <!-- <span>Password</span> -->
                            <input class="inputitem" type="password" name="password" placeholder="Password" required>
                        </div>
                        <center>
                            <div style="display: none;" id="log-ldr" class="spinner-border" role="status">
                                <span class="sr-only">Loading...</span>
                            </div>
                        </center>
                        <button id="log-btn" type="submit" class="btn solid">Login</button>
                    </form>
                </div>
            </div>
        </section>
    </body>
    <script src="js/Admin_Login.js"></script>
</html>
