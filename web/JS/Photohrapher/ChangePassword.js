function Previous() {
    window.history.back()
}

function changePassword() {

    var cpass = document.getElementById("cpass").value;
    var npass = document.getElementById("npass").value;
    var rpass = document.getElementById("rpass").value;

    cpass = cpass.trim();
    npass = npass.trim();
    rpass = rpass.trim();

    if (cpass === "" || npass === "" || rpass === "") {
        document.getElementById("msg").innerHTML = "Complete Relevant Details";
    } else if (npass == rpass) {
        document.getElementById("msg").innerHTML = "New Password didn't match with Retyped Password";
    } else {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                   
                }
            }
        };
        request.open("POST", "../../ChangePassword", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("cpass="+ cpass +"&npass="+ npass+ "&rpass="+ rpass);
    }

}

function nospaces(t) {
    if (t.value.match(/\s/g)) {
        t.value = t.value.replace(/\s/g, '');
    }
}