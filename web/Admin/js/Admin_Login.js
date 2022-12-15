$(document).ready(function () {
    console.log("Page Loaded!!")

    $('#log-form').on('submit', function () {
        $('#submit').text("Wait..");
        event.preventDefault();
        
        let logForm = new FormData(this);

        $.ajax({
            url: '../AdminLoginServelet',
            type: 'POST',
            data: logForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    swal("Welcome Admin!", "Logged in Successfully.", "success")
                            .then((value) => {
                                window.location = "Admin_Dashboard.jsp"
                            });
                    $('#submit').text("Sign In");
                } else {
                    swal("Oops", "Invalid Details!", "error")
                    $('#submit').text("Sign In");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#submit').text("Sign In");
            },
            processData: false,
            contentType: false
        })
    })
});

