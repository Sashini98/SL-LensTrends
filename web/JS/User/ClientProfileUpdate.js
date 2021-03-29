
function pencileditenable(edit) {
    document.getElementById(edit).disabled = false;

    if (edit == "fname") {
        document.getElementById("pencil1").style.visibility = "hidden";
        document.getElementById("ic1").style.visibility = "visible";
        document.getElementById("ic2").style.visibility = "visible";
    } else if (edit == "lname") {
        document.getElementById("pencil2").style.visibility = "hidden";
        document.getElementById("ic3").style.visibility = "visible";
        document.getElementById("ic4").style.visibility = "visible";
    } else if (edit == "email") {
        document.getElementById("pencil3").style.visibility = "hidden";
        document.getElementById("ic5").style.visibility = "visible";
        document.getElementById("ic6").style.visibility = "visible";
    } else if (edit == "address") {
        document.getElementById("pencil8").style.visibility = "hidden";
        document.getElementById("ic15").style.visibility = "visible";
        document.getElementById("ic16").style.visibility = "visible";
    } else if (edit == "city") {
        document.getElementById("pencil9").style.visibility = "hidden";
        document.getElementById("ic17").style.visibility = "visible";
        document.getElementById("ic18").style.visibility = "visible";
    } else if (edit == "province") {
        document.getElementById("pencil10").style.visibility = "hidden";
        document.getElementById("ic19").style.visibility = "visible";
        document.getElementById("ic20").style.visibility = "visible";
    }
}


function cancelupdate(cancel) {
    if (cancel == "ic2") {

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("fname").placeholder = responce;
                    document.getElementById("fname").value = responce;
                    document.getElementById("fname").disabled = true;
                    document.getElementById("pencil1").style.visibility = "visible";
                    document.getElementById("ic1").style.visibility = "hidden";
                    document.getElementById("ic2").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../CancellingClientUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=fname");


    } else if (cancel == "ic4") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("lname").placeholder = responce;
                    document.getElementById("lname").value = responce;
                    document.getElementById("lname").disabled = true;
                    document.getElementById("pencil2").style.visibility = "visible";
                    document.getElementById("ic3").style.visibility = "hidden";
                    document.getElementById("ic4").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../CancellingClientUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=lname");



    } else if (cancel == "ic6") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("email").placeholder = responce;
                    document.getElementById("email").value = responce;
                    document.getElementById("email").disabled = true;
                    document.getElementById("pencil3").style.visibility = "visible";
                    document.getElementById("ic5").style.visibility = "hidden";
                    document.getElementById("ic6").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../CancellingClientUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=email");

    } else if (cancel == "ic16") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("address").placeholder = responce;
                    document.getElementById("address").value = responce;
                    document.getElementById("address").disabled = true;
                    document.getElementById("pencil8").style.visibility = "visible";
                    document.getElementById("ic15").style.visibility = "hidden";
                    document.getElementById("ic16").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../CancellingClientUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=address");



    } else if (cancel == "ic18") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("city").placeholder = responce;
                    document.getElementById("city").value = responce;
                    document.getElementById("city").disabled = true;
                    document.getElementById("pencil9").style.visibility = "visible";
                    document.getElementById("ic17").style.visibility = "hidden";
                    document.getElementById("ic18").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../CancellingClientUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=city");



    } else if (cancel == "ic20") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("province").placeholder = responce;
                    document.getElementById("province").value = responce;
                    document.getElementById("province").disabled = true;
                    document.getElementById("pencil10").style.visibility = "visible";
                    document.getElementById("ic19").style.visibility = "hidden";
                    document.getElementById("ic20").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../CancellingClientUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=province");



    }
}


function updatedata(field) {

    if (field == "ic1") {
        var fname = document.getElementById("fname").value;
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {
                    var responce = request.responseText;
                    document.getElementById("fname").disabled = true;
                    document.getElementById("pencil1").style.visibility = "visible";
                    document.getElementById("ic1").style.visibility = "hidden";
                    document.getElementById("ic2").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../ClientDetailsUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userfname=" + fname);

    } else if (field == "ic3") {
        var lname = document.getElementById("lname").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("lname").disabled = true;
                    document.getElementById("pencil2").style.visibility = "visible";
                    document.getElementById("ic3").style.visibility = "hidden";
                    document.getElementById("ic4").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../ClientDetailsUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userlname=" + lname);

    } else if (field == "ic5") {
        var email = document.getElementById("email").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("email").disabled = true;
                    document.getElementById("pencil3").style.visibility = "visible";
                    document.getElementById("ic5").style.visibility = "hidden";
                    document.getElementById("ic6").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../ClientDetailsUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("useremail=" + email);

    } else if (field == "ic15") {
        var address = document.getElementById("address").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("address").disabled = true;
                    document.getElementById("pencil8").style.visibility = "visible";
                    document.getElementById("ic15").style.visibility = "hidden";
                    document.getElementById("ic16").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../ClientDetailsUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("useraddress=" + address);

    } else if (field == "ic17") {
        var city = document.getElementById("city").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("city").disabled = true;
                    document.getElementById("pencil9").style.visibility = "visible";
                    document.getElementById("ic17").style.visibility = "hidden";
                    document.getElementById("ic18").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../ClientDetailsUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("usercity=" + city);

    } else if (field == "ic19") {
        var province = document.getElementById("province").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("province").disabled = true;
                    document.getElementById("pencil10").style.visibility = "visible";
                    document.getElementById("ic19").style.visibility = "hidden";
                    document.getElementById("ic20").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../ClientDetailsUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userprovince=" + province);

    }
}

var btn = document.getElementById("delBtn");
var span = document.getElementById("delAccClose");
var span = document.getElementById("delAccClose");
var noBtn = document.getElementById("noBtn");

btn.onclick = function () {
    var modal = document.getElementById("delAcc");
    document.getElementById('content').style.opacity = "0.5";
    modal.style.display = "block";
}

span.onclick = function () {
    var modal = document.getElementById("delAcc");
    document.getElementById('content').style.opacity = "1";
    modal.style.display = "none";
}

noBtn.onclick = function () {
    var modal = document.getElementById("delAcc");
    document.getElementById('content').style.opacity = "1";
    modal.style.display = "none";
}


function deleteAccount() {

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                if (responce == "success") {
                    window.location.href = "/GroupProject/LogOut?loc=ch";

                }

            }
        }
    }
    request.open("POST", "../../DeleteClientAccount", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();

}
