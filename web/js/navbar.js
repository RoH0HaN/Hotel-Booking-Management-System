// hammenu
let sidemu = document.getElementById("sidemenu");

function openmenu() {
    sidemu.style.right = "0";
}

function closemenu() {
    sidemu.style.right = "-200px";
}
$(document).ready(function () {
    console.log("Navbar Loaded....")
    $('#out-btn').click(function () {
        swal("Thank You!", "Logged Out Successfully.", "success")
                .then((value) => {
                    window.location = "LogoutServlet"
                });
    })
});


