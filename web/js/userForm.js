const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
    container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
    container.classList.remove("sign-up-mode");
});




$(document).ready(function () {
    console.log("Loaded.....");

    $('#log-form').on('submit', function (event) {
        event.preventDefault();
        $('#log-btn').text("Logging in");
        let logForm = new FormData(this);

        // Send Login Servlet--->
        $.ajax({
            url: 'LoginServlet',
            type: 'POST',
            data: logForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    swal("Welcome!", "Logged in Successfully.", "success")
                            .then((value) => {
                                window.location = "userHome.jsp"
                            });
                    $('#log-btn').text("login");
                } else {
                    swal("Oops", "Invalid Details!", "error")
                    $('#log-btn').text("login");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#log-btn').text("login");
            },
            processData: false,
            contentType: false
        })
    })


    $('#reg-form').on('submit', function (event) {
        event.preventDefault();
        $('#reg-btn').text("Setting up");
        let regForm = new FormData(this);

        // Send Register Servlet--->
        $.ajax({
            url: 'RegisterServlet',
            type: 'POST',
            data: regForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    swal("Registration Successful", "Wellcome to our Website!", "success")
                            .then((value) => {
                                window.location = "userForm.jsp"
                            });
                    $('#reg-btn').text("register");
                } else {
                    swal("Oops", "Email or Phone Already Exists!", "error")
                    $('#reg-btn').text("register");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#reg-btn').text("register");
            },
            processData: false,
            contentType: false
        })
    })
});

