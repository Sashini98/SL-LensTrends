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