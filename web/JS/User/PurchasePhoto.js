function reportItemClicked(id) {
    var color = document.getElementById(id).style.color;
    if (color === 'white') {
        document.getElementById(id).style.background = 'rgb(216, 218, 223)';
        document.getElementById(id).style.color = 'black';

    } else {
        document.getElementById(id).style.background = 'RGB(23,113,230)';
        document.getElementById(id).style.color = 'white';

    }
}

var modal = document.getElementById("ReportPhoto");

var btn = document.getElementById("ReportBtn");

var span = document.getElementsByClassName("close")[0];


btn.onclick = function () {
    document.getElementById('content').style.opacity = "0.5";
    modal.style.display = "block";
}


span.onclick = function () {
    document.getElementById('content').style.opacity = "1";
    modal.style.display = "none";
}

window.onclick = function (event) {
    if (event.target == modal) {
        document.getElementById('content').style.opacity = "1";
        modal.style.display = "none";
    }
}

function reportPhoto() {

    var color1 = document.getElementById("Inappropriate").style.color;
    var color2 = document.getElementById("quality").style.color;
    var color3 = document.getElementById("details").style.color;
    var color4 = document.getElementById("fake").style.color;
    var color5 = document.getElementById("somethingElse").style.color;
    var description = document.getElementById("reason").value;

    var title = "";

    if (color1 === 'white') {
        title += "/Posting Inappropriate Things";
    }
    if (color2 === 'white') {
        title += "/Low Quality Photograph";
    }
    if (color3 === 'white') {
        title += "/Inappropriate Details";
    }
    if (color4 === 'white') {
        title += "/Fake Photograph";
    }
    if (color5 === 'white') {
        title += "/Something Else";
    }

    if (title !== "" && description !== "") {
        request.onreadystatechange = function () {
            var request = new XMLHttpRequest();
            if (request.status == 200) {
                if (request.readyState == 4) {
                    var responce = request.responseText;
                    if (responce === "Success") {
                        alert("Reported Successfully");
                        document.getElementById('content').style.opacity = "1";
                        modal.style.display = "none";
                    } else {
                        alert("Error");
                        document.getElementById('content').style.opacity = "1";
                        modal.style.display = "none";

                    }
                }
            }
        };

        request.open("POST", "../../ReportPhoto", true);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("title=" + title + "&description=" + description);
    }else{
        alert("Complete relevant details first");
    }

}