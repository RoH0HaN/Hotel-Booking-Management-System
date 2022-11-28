// for about section js

function show() {
    document.getElementById("rdes").style.display = "block";
    document.getElementById("ame").style.display = "none";
    document.getElementById("hrule").style.display = "none";
}

function show1() {
    document.getElementById("ame").style.display = "block";
    document.getElementById("rdes").style.display = "none";
    document.getElementById("hrule").style.display = "none";
}

function show2() {
    document.getElementById("hrule").style.display = "block";
    document.getElementById("rdes").style.display = "none";
    document.getElementById("ame").style.display = "none";
}

$(document).ready(function () {
    console.log("Loaded.....");
//    Getting Parameters from URL
    $.urlParam = function (name) {
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        return results[1] || 0;
    }
    var d = $.urlParam('id');
    console.log(d);

    $('#book-form').on('submit', function (event) {
        event.preventDefault();
        $('#ldr').show();
        $('#sbmt-btn').hide();

        let logForm = new FormData(this);

        // Send Login Servlet--->
        $.ajax({
            url: 'BookingServlet',
            type: 'POST',
            data: logForm,
            success: function (data, textStatus, jqXHR) {
                console.log(data);
                if (data.trim() === 'done') {
                    $('#ldr').hide();
                    $('#sbmt-btn').show();
                    swal("Welcome!", "Booking Request sent.", "success")
                            .then((value) => {
                                window.location = "booking.jsp?id=" + d + ""
                            });
                     $('#book-form').trigger("reset");
                } else {
                    $('#ldr').hide();
                    $('#sbmt-btn').show();
                    swal("Oops", "Invalid Details!", "error")
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                $('#ldr').hide();
                $('#sbmt-btn').show();
                swal("Oops", "Something went wrong!", "error")
            },
            processData: false,
            contentType: false
        })
    })

});
