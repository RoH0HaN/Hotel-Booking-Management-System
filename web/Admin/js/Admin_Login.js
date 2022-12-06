$(document).ready(function () {
    console.log("Page Loaded!!")

    $('#log-form').on('submit', function () {
        event.preventDefault();
        $('#log-btn').hide();
        $('#log-ldr').show();
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
                    $('#log-btn').show();
                    $('#log-ldr').hide();
                } else {
                    swal("Oops", "Invalid Details!", "error")
                    $('#log-btn').show();
                    $('#log-ldr').hide();
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                swal("Oops", "Something went wrong!", "error")
                $('#log-btn').show();
                    $('#log-ldr').hide();
            },
            processData: false,
            contentType: false
        })
    })
});

