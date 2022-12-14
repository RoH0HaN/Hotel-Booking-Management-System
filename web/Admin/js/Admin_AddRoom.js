$(document).ready(function () {
    console.log("Action Form Loaded..");

    $('#rup-form').on('submit', function (event) {
        event.preventDefault();
        $('#rup-btn').text("Wait..");
        let logForm = new FormData(this);

        // Send Add Room Servlet--->
        $.ajax({
            url: '../AddRoomServlet',
            type: 'POST',
            data: logForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    swal("Done", "Room Added Succesfully.", "success")
                    $('#rup-btn').text("Add Room");
                    $('#rup-form').trigger("reset");
                } else {
                    swal("Oops", "Something went wrong!", "error")
                    $('#rup-btn').text("Add Room");
                    $('#rup-form').trigger("reset");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#rup-btn').text("Add Room");
                $('#rup-form').trigger("reset");
            },
            processData: false,
            contentType: false
        })
    })
});


