<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login or Signup</title>

        <link rel="stylesheet" href="css/userForm.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!-- jQuery library -->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>

        <!-- Popper JS -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <script src="https://kit.fontawesome.com/14d362f720.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="forms-container">
                <div class="signin-signup">
                    <form id="log-form" action="LoginServlet" method="POST" class="sign-in-form">
                        <h2 class="title">Sign in</h2>
                        <div class="input-field">
                            <input name="email" required type="text" placeholder="Email" />
                        </div>
                        <div class="input-field">
                            <input name="password" required type="password" placeholder="Password" />
                        </div>
                        <button id="log-btn" type="submit" class="btn solid">Login</button>
                        <p class="social-text">Or sign in with social platforms</p>
                        <div class="social-media">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </div>
                        <button class="btn solid">Admin Login</button>
                    </form>

                    <form id="reg-form" action="RegisterServlet" method="POST" class="sign-up-form">
                        <h2 class="title">Sign up</h2>
                        <div class="input-field">
                            <input name="name" required type="text" placeholder="Full Name" />
                        </div>
                        <div class="input-field">
                            <input name="email" required type="text" placeholder="Email" />
                        </div>
                        <div class="input-field">
                            <input name="password" required type="password" placeholder="Password" />
                        </div>
                        <button id="reg-btn" type="submit" class="btn solid" value="Sign up">Register</button>
                        <p class="social-text">Or sign up with social platforms</p>
                        <div class="social-media">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="panels-container">
                <div class="panel left-panel">
                    <div class="content">
                        <h3>New here ?</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus impedit
                            quidem quibusdam?</p> 
                        <button class="btn transparent" id="sign-up-btn">Sign up</button>
                    </div>
                    <img src="image/img1.svg" class="image" alt="">
                </div>
                <div class="panel right-panel">
                    <div class="content">
                        <h3>one of us ?</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus impedit
                            quidem quibusdam?</p> 
                        <button class="btn transparent" id="sign-in-btn">Sign in</button>
                    </div>
                    <img src="image/img2.svg" class="image" alt="">
                </div>
            </div>
        </div>
        <script src="js/userForm.js"></script>
    </body>
</html>
