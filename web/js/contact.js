$(document).ready(function () {
    console.log("Loaded.....");

    $('#contact-form').on('submit', function (event) {
        event.preventDefault();
        $('#messege-btn').text("Sending...");
        let logForm = new FormData(this);

        // Send Login Servlet--->
        $.ajax({
            url: 'ContactServlet',
            type: 'POST',
            data: logForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    swal("Done!", "Messege Request Sent Successfully.", "success")
                    $('#contact-form').trigger("reset");
                    $('#messege-btn').text("Submit Request");
                } else {
                    swal("Oops", "Invalid Details!", "error")
                    $('#contact-form').trigger("reset");
                    $('#messege-btn').text("Submit Request");
                    
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#contact-form').trigger("reset");
                $('#messege-btn').text("Submit Request");
            },
            processData: false,
            contentType: false
        })
    })
});

