$(document).ready(function () {
    console.log("Action Form Loaded..");

    $('#order-form').on('submit', function (event) {
        event.preventDefault();
        $('#order-btn').text("Wait..");
        let logForm = new FormData(this);

        // Send Order Servlet--->
        $.ajax({
            url: '../OrderActionServlet',
            type: 'POST',
            data: logForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    swal("Done", "Order Status Updated Succesfully.", "success")
                    $('#order-btn').text("Submit");
                    location.reload(true);
                } else {
                    swal("Oops", "Something went wrong!", "error")
                    $('#order-btn').text("Submit");
                    location.reload(true);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#order-btn').text("Submit");
                location.reload(true);
            },
            processData: false,
            contentType: false
        })
    })
});


