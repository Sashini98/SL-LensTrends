
/* global delAcc */

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
    } else if (edit == "mnum") {
        document.getElementById("pencil4").style.visibility = "hidden";
        document.getElementById("ic7").style.visibility = "visible";
        document.getElementById("ic8").style.visibility = "visible";
    } else if (edit == "web") {
        document.getElementById("pencil5").style.visibility = "hidden";
        document.getElementById("ic9").style.visibility = "visible";
        document.getElementById("ic10").style.visibility = "visible";
    } else if (edit == "biotext") {
        document.getElementById("pencil6").style.visibility = "hidden";
        document.getElementById("ic11").style.visibility = "visible";
        document.getElementById("ic12").style.visibility = "visible";
    } else if (edit == "interest") {
        document.getElementById("pencil7").style.visibility = "hidden";
        document.getElementById("ic13").style.visibility = "visible";
        document.getElementById("ic14").style.visibility = "visible";
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
    } else if (edit == "zip") {
        document.getElementById("pencil11").style.visibility = "hidden";
        document.getElementById("ic21").style.visibility = "visible";
        document.getElementById("ic22").style.visibility = "visible";
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
        request.open("POST", "../../CancellingPhotographerUpdate", false);
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
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
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
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=email");



    } else if (cancel == "ic8") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("mnum").placeholder = responce;
                    document.getElementById("mnum").value = responce;
                    document.getElementById("mnum").disabled = true;
                    document.getElementById("pencil4").style.visibility = "visible";
                    document.getElementById("ic7").style.visibility = "hidden";
                    document.getElementById("ic8").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=mnum");



    } else if (cancel == "ic10") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("web").placeholder = responce;
                    document.getElementById("web").value = responce;
                    document.getElementById("web").disabled = true;
                    document.getElementById("pencil5").style.visibility = "visible";
                    document.getElementById("ic9").style.visibility = "hidden";
                    document.getElementById("ic10").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=web");



    } else if (cancel == "ic12") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("biotext").placeholder = responce;
                    document.getElementById("biotext").value = responce;
                    document.getElementById("biotext").disabled = true;
                    document.getElementById("pencil6").style.visibility = "visible";
                    document.getElementById("ic11").style.visibility = "hidden";
                    document.getElementById("ic12").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=bio");



    } else if (cancel == "ic14") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("interest").placeholder = responce;
                    document.getElementById("interest").value = responce;
                    document.getElementById("interest").disabled = true;
                    document.getElementById("pencil7").style.visibility = "visible";
                    document.getElementById("ic13").style.visibility = "hidden";
                    document.getElementById("ic14").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=interest");



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
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
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
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
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
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=province");



    } else if (cancel == "ic22") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("zip").placeholder = responce;
                    document.getElementById("zip").value = responce;
                    document.getElementById("zip").disabled = true;
                    document.getElementById("pencil11").style.visibility = "visible";
                    document.getElementById("ic21").style.visibility = "hidden";
                    document.getElementById("ic22").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../CancellingPhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit=postal");


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
        };
        request.open("POST", "../../PhotographerUpdate", false);
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
        };
        request.open("POST", "../../PhotographerUpdate", false);
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
        };
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("useremail=" + email);

    } else if (field == "ic7") {
        var mnum = document.getElementById("mnum").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("mnum").disabled = true;
                    document.getElementById("pencil4").style.visibility = "visible";
                    document.getElementById("ic7").style.visibility = "hidden";
                    document.getElementById("ic8").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("usermnum=" + mnum);

    } else if (field == "ic9") {
        var web = document.getElementById("web").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("web").disabled = true;
                    document.getElementById("pencil5").style.visibility = "visible";
                    document.getElementById("ic9").style.visibility = "hidden";
                    document.getElementById("ic10").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userweb=" + web);

    } else if (field == "ic11") {
        var bio = document.getElementById("biotext").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("biotext").disabled = true;
                    document.getElementById("pencil6").style.visibility = "visible";
                    document.getElementById("ic11").style.visibility = "hidden";
                    document.getElementById("ic12").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userbio=" + bio);

    } else if (field == "ic13") {
        var interest = document.getElementById("interest").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("interest").disabled = true;
                    document.getElementById("pencil7").style.visibility = "visible";
                    document.getElementById("ic13").style.visibility = "hidden";
                    document.getElementById("ic14").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userinterest=" + interest);

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
        };
        request.open("POST", "../../PhotographerUpdate", false);
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
        };
        request.open("POST", "../../PhotographerUpdate", false);
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
        };
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("province=" + province);

    } else if (field == "ic21") {
        var zip = document.getElementById("zip").value;
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(responce);
                    document.getElementById("zip").disabled = true;
                    document.getElementById("pencil11").style.visibility = "visible";
                    document.getElementById("ic21").style.visibility = "hidden";
                    document.getElementById("ic22").style.visibility = "hidden";
                }
            }
        };
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userzip=" + zip);
    }
}

function Deleteaccount() {



    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                if (responce == "successfully Deleted") {
                    window.location.href = "/GroupProject/LogOut?loc=ch";

                }

            }
        }
    }
    request.open("POST", "../../DeletePhotographerAccount", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}

function closemodal() {
    document.getElementById("delAcc").style.display = "none";
}

var spand = document.getElementById("delAccClose");
spand.onclick = function () {
    var modal = document.getElementById("delAcc");
//    document.getElementById('content').style.opacity = "1";
    modal.style.display = "none";
}

var btn = document.getElementById("upload-close");
btn.onclick = function () {
    var modal = document.getElementById("portup");
//    document.getElementById('content').style.opacity = "1";
    modal.style.display = "none";
}

function openmodal() {
    var modal = document.getElementById("delAcc");
    modal.style.display = "block";
}

//function propicvalidation() {
//    var fileInput = document.getElementById('portimage');
//    var filePath = fileInput.value;
//    alert(filePath);
//    var filesize = fileInput.files[0].size;
//    alert(filesize);
//    var lowersizelimit = 2000000; // lowest size to upload
//    var higherlimit = 10000000;
//    var flag = 0;
//    var alertmsg = "";
//
//    // Allowing file type 
//    var allowedExtensions = /(\.jpg|\.jpeg)$/i;
//
//    if (!allowedExtensions.exec(filePath)) {
//        alertmsg += "Upload only JPEG or JPG image";
//        flag = 1;
//        document.getElementById('portimage').value = '';
//    }
//    if (filesize <= lowersizelimit) {
//        alertmsg += "Image is less then 1MP, Upload Images between 1MP and 25MP";
//        flag = 1;
//        document.getElementById("portimage").value = "";
//    }
//    if (filesize => higherlimit) {
//        alertmsg += "Image is greater then 5MP, Upload Images between 1MP and 25MP";
//        flag = 1;
//        document.getElementById("portimage").value = "";
//    }
//    if (flag === 1) {
//        alert(alertmsg);
//        return false;
//    }
//}

function propicupload() {

    var check = document.getElementById('portimage').value;
    if (check === "" || check == null) {
        alert("Select an Image")
    } else {
        var file = document.getElementById('portimage').files[0];
//        alert(file);
        alert(document.getElementById("portimage"));
        var formdata = new FormData();
        formdata.append("file1", file);

        var request = new XMLHttpRequest();
        request.onreadystatechange = function () {
            if (request.readyState === 4) {
                if (request.status === 200) {
                    var responce = request.responseText;
                    alert(responce);
                }
            }

        };
        request.open("POST", "../../UploadPropic", false);
        request.send(formdata);
        location.reload();
    }
}

function openPropicmodal() {
    var modal = document.getElementById("portup");
    modal.style.display = "block";
}