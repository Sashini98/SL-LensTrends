
function pencileditenable(edit) {
    document.getElementById(edit).disabled = false;


    if (edit == "fname") {
        document.getElementById("pencil1").style.visibility = "hidden";
        document.getElementById("ic1").style.visibility = "visible";
        document.getElementById("ic2").style.visibility = "visible";
        if (document.getElementById("ic1").src == "../../Resources/Img/checkmark.png") {
            alert("athavan");
            document.getElementById("fname").disabled = true;
        }
    } else if (edit == "lname") {
        document.getElementById("pencil2").style.visibility = "hidden";
        document.getElementById("ic3").style.visibility = "visible";
        document.getElementById("ic4").style.visibility = "visible";
    } else if (edit == "uname") {
        document.getElementById("pencil3").style.visibility = "hidden";
        document.getElementById("ic5").style.visibility = "visible";
        document.getElementById("ic6").style.visibility = "visible";
    } else if (edit == "email") {
        document.getElementById("pencil4").style.visibility = "hidden";
        document.getElementById("ic7").style.visibility = "visible";
        document.getElementById("ic8").style.visibility = "visible";
    } else if (edit == "mnum") {
        document.getElementById("pencil5").style.visibility = "hidden";
        document.getElementById("ic9").style.visibility = "visible";
        document.getElementById("ic10").style.visibility = "visible";
    } else if (edit == "web") {
        document.getElementById("pencil6").style.visibility = "hidden";
        document.getElementById("ic11").style.visibility = "visible";
        document.getElementById("ic12").style.visibility = "visible";
    } else if (edit == "biotext") {
        document.getElementById("pencil7").style.visibility = "hidden";
        document.getElementById("ic13").style.visibility = "visible";
        document.getElementById("ic14").style.visibility = "visible";
    } else if (edit == "interest") {
        document.getElementById("pencil8").style.visibility = "hidden";
        document.getElementById("ic15").style.visibility = "visible";
        document.getElementById("ic16").style.visibility = "visible";
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