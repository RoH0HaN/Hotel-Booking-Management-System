$(document).ready(function () {
    console.log("Loaded.....");


    $('#update-form').on('submit', function (event) {
        event.preventDefault();
        $('#up-ldr').show();
        $('#update-btn').hide();

        let logForm = new FormData(this);

        // Send Login Servlet--->
        $.ajax({
            url: 'UpdateServlet',
            type: 'POST',
            data: logForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    $('#upldr').hide();
                    $('#update-btn').show();
                    swal("Successful!", "Profile Updated.", "success")
                            .then((value) => {
                                window.location = "profile.jsp"
                            });
                    $('#update-form').trigger("reset");
                } else {
                    $('#upldr').hide();
                    $('#update-btn').show();
                    swal("Oops", "Something went wrong!", "error")
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                $('#upldr').hide();
                $('#update-btn').show();
                swal("Oops", "Something went wrong!", "error")
            },
            processData: false,
            contentType: false
        })
    })

});