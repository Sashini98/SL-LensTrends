
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
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='fname'");

        document.getElementById("fname").disabled = true;
        document.getElementById("pencil1").style.visibility = "visible";
        document.getElementById("ic1").style.visibility = "hidden";
        document.getElementById("ic2").style.visibility = "hidden";

    } else if (cancel == "ic4") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("lname").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='lname'");

        document.getElementById("lname").disabled = true;
        document.getElementById("pencil2").style.visibility = "visible";
        document.getElementById("ic3").style.visibility = "hidden";
        document.getElementById("ic4").style.visibility = "hidden";

    } else if (cancel == "ic6") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("email").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='email'");

        document.getElementById("email").disabled = true;
        document.getElementById("pencil3").style.visibility = "visible";
        document.getElementById("ic5").style.visibility = "hidden";
        document.getElementById("ic6").style.visibility = "hidden";

    } else if (cancel == "ic8") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("mnum").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='mnum'");

        document.getElementById("mnum").disabled = true;
        document.getElementById("pencil4").style.visibility = "visible";
        document.getElementById("ic7").style.visibility = "hidden";
        document.getElementById("ic8").style.visibility = "hidden";

    } else if (cancel == "ic10") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("web").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='web'");

        document.getElementById("web").disabled = true;
        document.getElementById("pencil5").style.visibility = "visible";
        document.getElementById("ic9").style.visibility = "hidden";
        document.getElementById("ic10").style.visibility = "hidden";

    } else if (cancel == "ic12") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("biotext").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='bio'");

        document.getElementById("biotext").disabled = true;
        document.getElementById("pencil6").style.visibility = "visible";
        document.getElementById("ic11").style.visibility = "hidden";
        document.getElementById("ic12").style.visibility = "hidden";

    } else if (cancel == "ic14") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("interest").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='interest'");

        document.getElementById("interest").disabled = true;
        document.getElementById("pencil7").style.visibility = "visible";
        document.getElementById("ic13").style.visibility = "hidden";
        document.getElementById("ic14").style.visibility = "hidden";

    } else if (cancel == "ic16") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("address").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='address'");

        document.getElementById("address").disabled = true;
        document.getElementById("pencil8").style.visibility = "visible";
        document.getElementById("ic15").style.visibility = "hidden";
        document.getElementById("ic16").style.visibility = "hidden";

    } else if (edit == "ic18") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("address").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='city'");

        document.getElementById("city").disabled = true;
        document.getElementById("pencil9").style.visibility = "visible";
        document.getElementById("ic17").style.visibility = "hidden";
        document.getElementById("ic18").style.visibility = "hidden";

    } else if (edit == "ic20") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("province").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='province'");

        document.getElementById("province").disabled = true;
        document.getElementById("pencil10").style.visibility = "visible";
        document.getElementById("ic19").style.visibility = "hidden";
        document.getElementById("ic20").style.visibility = "hidden";

    } else if (edit == "ic22") {
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    document.getElementById("zip").placeholder = responce;
                }
            }
        }
        request.open("POST", "../../CancellingPhotographerUpdata", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("canceledit='postal'");

        document.getElementById("zip").disabled = true;
        document.getElementById("pencil11").style.visibility = "visible";
        document.getElementById("ic21").style.visibility = "hidden";
        document.getElementById("ic22").style.visibility = "hidden";
    }
}






function updatedata(field) {

    if (field == "ic1") {
        var fname = document.getElementById("fname").value;
        alert(fname);
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(response);
                    document.getElementById("fname").disabled = true;
                    document.getElementById("pencil1").style.visibility = "visible";
                    document.getElementById("ic1").style.visibility = "hidden";
                    document.getElementById("ic2").style.visibility = "hidden";
                }
            }
        }
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
                    alert(response);
                    document.getElementById("lname").disabled = true;
                    document.getElementById("pencil2").style.visibility = "visible";
                    document.getElementById("ic3").style.visibility = "hidden";
                    document.getElementById("ic4").style.visibility = "hidden";
                }
            }
        }
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
                    alert(response);
                    document.getElementById("email").disabled = true;
                    document.getElementById("pencil3").style.visibility = "visible";
                    document.getElementById("ic5").style.visibility = "hidden";
                    document.getElementById("ic6").style.visibility = "hidden";
                }
            }
        }
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
                    alert(response);
                    document.getElementById("mnum").disabled = true;
                    document.getElementById("pencil4").style.visibility = "visible";
                    document.getElementById("ic7").style.visibility = "hidden";
                    document.getElementById("ic8").style.visibility = "hidden";
                }
            }
        }
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
                    alert(response);
                    document.getElementById("web").disabled = true;
                    document.getElementById("pencil5").style.visibility = "visible";
                    document.getElementById("ic9").style.visibility = "hidden";
                    document.getElementById("ic10").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userweb=" + web);

    } else if (field == "ic11") {
        var bio = document.getElementById("bio").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(response);
                    document.getElementById("bio").disabled = true;
                    document.getElementById("pencil6").style.visibility = "visible";
                    document.getElementById("ic11").style.visibility = "hidden";
                    document.getElementById("ic12").style.visibility = "hidden";
                }
            }
        }
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
                    alert(response);
                    document.getElementById("interest").disabled = true;
                    document.getElementById("pencil7").style.visibility = "visible";
                    document.getElementById("ic13").style.visibility = "hidden";
                    document.getElementById("ic14").style.visibility = "hidden";
                }
            }
        }
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
                    alert(response);
                    document.getElementById("address").disabled = true;
                    document.getElementById("pencil8").style.visibility = "visible";
                    document.getElementById("ic15").style.visibility = "hidden";
                    document.getElementById("ic16").style.visibility = "hidden";
                }
            }
        }
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
                    alert(response);
                    document.getElementById("city").disabled = true;
                    document.getElementById("pencil9").style.visibility = "visible";
                    document.getElementById("ic17").style.visibility = "hidden";
                    document.getElementById("ic18").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("usercity=" + city);

    } else if (field == "ic19") {
        var province = document.getElementById("city").value;

        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(response);
                    document.getElementById("province").disabled = true;
                    document.getElementById("pencil10").style.visibility = "visible";
                    document.getElementById("ic19").style.visibility = "hidden";
                    document.getElementById("ic20").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userprovince=" + province);

    } else if (field == "ic21") {
        var zip = document.getElementById("zip").value;
        alert(zip);
        var request = new XMLHttpRequest();

        request.onreadystatechange = function () {
            if (request.status === 200) {
                if (request.readyState === 4) {

                    var responce = request.responseText;
                    alert(response);
                    document.getElementById("zip").disabled = true;
                    document.getElementById("pencil11").style.visibility = "visible";
                    document.getElementById("ic21").style.visibility = "hidden";
                    document.getElementById("ic22").style.visibility = "hidden";
                }
            }
        }
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userzip=" + zip);
    }
}