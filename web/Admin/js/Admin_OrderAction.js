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
                            .then((value) => {
                                window.location = "Admin_BookDetails.jsp"
                            });
                    $('#order-btn').text("Submit");
                } else {
                    swal("Oops", "Something went wrong!", "error")
                    $('#order-btn').text("Submit");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#order-btn').text("Submit");
            },
            processData: false,
            contentType: false
        })
    })
});


