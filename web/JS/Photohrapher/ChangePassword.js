function Previous() {
    window.history.back()
}

function changePassword(user) {

    var cpass = document.getElementById("cpass").value;
    var npass = document.getElementById("npass").value;
    var rpass = document.getElementById("rpass").value;

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                
                if (responce == "fill") {
                    document.getElementById("msg").innerHTML = "Complete relevant Fields";
                    document.getElementById("cpass").value = "";
                    document.getElementById("npass").value = "";
                    document.getElementById("rpass").value = "";
                } else if (responce == "match") {
                    document.getElementById("msg").innerHTML = "New Password don't match with retyped password";
                    document.getElementById("cpass").value = "";
                    document.getElementById("npass").value = "";
                    document.getElementById("rpass").value = "";
                } else if (responce == "success") {
                    document.getElementById("msg").innerHTML = "Password changed successfully";
                    document.getElementById("cpass").value = "";
                    document.getElementById("npass").value = "";
                    document.getElementById("rpass").value = "";

                }else if(responce == "cur"){
                    document.getElementById("msg").innerHTML = "Invalid Current Password";
                    document.getElementById("cpass").value = "";
                    document.getElementById("npass").value = "";
                    document.getElementById("rpass").value = "";
                }

            }
        }
    };
    request.open("POST", "../../ChangePassword", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("cpass=" + cpass + "&npass=" + npass + "&rpass=" + rpass + "&user=" + user);

}

function nospaces(t) {
    if (t.value.match(/\s/g)) {
        t.value = t.value.replace(/\s/g, '');
    }
    document.getElementById("msg").innerHTML = "";
}