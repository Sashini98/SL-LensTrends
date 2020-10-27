
function pencileditenable(edit) {
    document.getElementById(edit).disabled = false;


    if (edit == "fname" ) {
        document.getElementById("pencil1").style.visibility = "hidden";
        document.getElementById("ic1").style.visibility = "visible";
        document.getElementById("ic2").style.visibility = "visible";
    } else if (edit == "lname"){
        document.getElementById("pencil2").style.visibility = "hidden";
        document.getElementById("ic3").style.visibility = "visible";
        document.getElementById("ic4").style.visibility = "visible";
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
    }
    
    else if (field == "ic3") {
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