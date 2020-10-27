
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
                    var user = JSON.parse(responce);
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
                }
            }
        }
        request.open("POST", "../../PhotographerUpdate", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("userlname=" + lname);
    }
}