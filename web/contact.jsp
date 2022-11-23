<%-- 
    Document   : contact
    Created on : 24-Nov-2022, 1:13:56 AM
    Author     : mysterio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Contact Us Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/contact.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/footer.css">
        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
              integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
        <!-- Fontawesome icon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
              integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
              crossorigin="anonymous" />
    </head>

    <body>

<div><%@include file="navbar.jsp" %></div>
        <section class="contact-section">
            <div class="contact-bg">
                <h3>Get in Touch with Us</h3>
                <h2>contact us</h2>
                <div class="line">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <p class="text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Assumenda iste facilis quos
                    impedit fuga nobis modi debitis laboriosam velit reiciendis quisquam alias corporis, maxime enim, optio
                    ab dolorum sequi qui.</p>
            </div>


            <div class="contact-body">
                <div class="contact-info">
                    <div>
                        <span><i class="fas fa-mobile-alt"></i></span>
                        <span>Phone No.</span>
                        <span class="text">1800-456-xxxx </span>
                    </div>
                    <div>
                        <span><i class="fas fa-envelope-open"></i></span>
                        <span>E-mail</span>
                        <span class="text">myhotel@outlook.com</span>
                    </div>
                    <div>
                        <span><i class="fas fa-map-marker-alt"></i></span>
                        <span>Address</span>
                        <span class="text">Paglachandi , Jamalpur , 741181</span>
                    </div>
                    <div>
                        <span><i class="fas fa-clock"></i></span>
                        <span>Opening Hours</span>
                        <span class="text">9:00 AM to 7:00 PM</span>
                    </div>
                </div>

                <div class="contact-form">

                    <div>
                        <img src="image/contact-logo.svg" alt="">
                    </div>

                    <form>
                        <div>
                            <input type="text" class="form-control" placeholder="First Name">
                            <input type="text" class="form-control" placeholder="Last Name">
                        </div>
                        <div>
                            <input type="email" class="form-control" placeholder="E-mail">
                            <input type="text" class="form-control" placeholder="Phone">
                        </div>
                        <textarea rows="5" placeholder="Message" class="form-control" style="resize: none;"></textarea>
                        <input type="submit" class="send-btn" value="send message">
                    </form>

                </div>
            </div>

            <div class="map">
                <iframe src="https://maps.google.com/maps?q=kolkata&t=&z=13&ie=UTF8&iwloc=&output=embed" width="100%"
                        height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
            </div>

            <div class="contact-footer">
                <h3>Follow Us</h3>
                <div class="social-links">
                    <a href="#" class="fab fa-facebook-f"></a>
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-instagram"></a>
                    <a href="#" class="fab fa-linkedin"></a>
                    <a href="#" class="fab fa-youtube"></a>
                </div>
            </div>
        </section>
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