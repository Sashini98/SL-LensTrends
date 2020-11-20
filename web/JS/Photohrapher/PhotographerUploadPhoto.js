var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("download");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function () {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


function navigation(button) {

    if (button == "tosubmit") {
        document.getElementById("tosubmit-content").style.display = "block";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "none";
    } else if (button == "inreview") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "block";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "none";
    } else if (button == "notaccepted") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "block";
        document.getElementById("accepted-content").style.display = "none";
    } else if (button == "reviewed") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "block";
    }
}


function clickimage(click) {

    if (click == "re1") {
        document.getElementById("re1").style.transform = "scale(1.1)";
        document.getElementById("re1").style.border = "5px solid  #415daa";
        document.getElementById("re2").style.transform = "";
        document.getElementById("re2").style.border = "none";
        document.getElementById("re3").style.transform = "";
        document.getElementById("re3").style.border = "none";
        document.getElementById("re4").style.transform = "";
        document.getElementById("re4").style.border = "none";
    } else if (click == "re2") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re2").style.transform = "scale(1.1)";
        document.getElementById("re2").style.border = "5px solid  #415daa";
        document.getElementById("re3").style.transform = "";
        document.getElementById("re3").style.border = "none";
        document.getElementById("re4").style.transform = "";
        document.getElementById("re4").style.border = "none";
    } else if (click == "re3") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re3").style.transform = "scale(1.1)";
        document.getElementById("re3").style.border = "5px solid  #415daa";
        document.getElementById("re2").style.transform = "";
        document.getElementById("re2").style.border = "none";
        document.getElementById("re4").style.transform = "";
        document.getElementById("re4").style.border = "none";
    } else if (click == "re4") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re4").style.transform = "scale(1.1)";
        document.getElementById("re4").style.border = "5px solid  #415daa";
        document.getElementById("re3").style.transform = "";
        document.getElementById("re3").style.border = "none";
        document.getElementById("re2").style.transform = "";
        document.getElementById("re2").style.border = "none";
    }
}