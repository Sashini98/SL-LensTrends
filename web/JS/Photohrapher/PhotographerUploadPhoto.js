/* global sout */

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
//    uploadimage.innerHTML = "Choose file";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
//        uploadimage.innerHTML = "Choose file";
    }
}


function navigation(button) {


    if (button == "tosubmit") {
        document.getElementById("tosubmit-content").style.display = "block";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "none";
        document.getElementById("tosubmit").style.color = "#d86f19";
        document.getElementById("tosubmit").style.borderBottom = "2px solid #d86f19";
        document.getElementById("inreview").style.color = "#858383";
        document.getElementById("inreview").style.borderBottom = "none";
        document.getElementById("notaccepted").style.color = "#858383";
        document.getElementById("notaccepted").style.borderBottom = "none";
        document.getElementById("reviewed").style.color = "#858383";
        document.getElementById("reviewed").style.borderBottom = "none";
    } else if (button == "inreview") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "block";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "none";
        document.getElementById("inreview").style.color = "#d86f19";
        document.getElementById("inreview").style.borderBottom = "2px solid #d86f19";
        document.getElementById("tosubmit").style.color = "#858383";
        document.getElementById("tosubmit").style.borderBottom = "none";
        document.getElementById("notaccepted").style.color = "#858383";
        document.getElementById("notaccepted").style.borderBottom = "none";
        document.getElementById("reviewed").style.color = "#858383";
        document.getElementById("reviewed").style.borderBottom = "none";
    } else if (button == "notaccepted") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "block";
        document.getElementById("accepted-content").style.display = "none";
        document.getElementById("notaccepted").style.color = "#d86f19";
        document.getElementById("notaccepted").style.borderBottom = "2px solid #d86f19";
        document.getElementById("tosubmit").style.color = "#858383";
        document.getElementById("tosubmit").style.borderBottom = "none";
        document.getElementById("inreview").style.color = "#858383";
        document.getElementById("inreview").style.borderBottom = "none";
        document.getElementById("reviewed").style.color = "#858383";
        document.getElementById("reviewed").style.borderBottom = "none";
    } else if (button == "reviewed") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "block";
        document.getElementById("reviewed").style.color = "#d86f19";
        document.getElementById("reviewed").style.borderBottom = "2px solid #d86f19";
        document.getElementById("tosubmit").style.color = "#858383";
        document.getElementById("tosubmit").style.borderBottom = "none";
        document.getElementById("inreview").style.color = "#858383";
        document.getElementById("inreview").style.borderBottom = "none";
        document.getElementById("notaccepted").style.color = "#858383";
        document.getElementById("notaccepted").style.borderBottom = "none";
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
        document.getElementById("image1").style.display = "block";
        document.getElementById("image2").style.display = "none";
        document.getElementById("image3").style.display = "none";
        document.getElementById("image4").style.display = "none";
    } else if (click == "re2") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re2").style.transform = "scale(1.1)";
        document.getElementById("re2").style.border = "5px solid  #415daa";
        document.getElementById("re3").style.transform = "";
        document.getElementById("re3").style.border = "none";
        document.getElementById("re4").style.transform = "";
        document.getElementById("re4").style.border = "none";
        document.getElementById("image2").style.display = "block";
        document.getElementById("image1").style.display = "none";
        document.getElementById("image3").style.display = "none";
        document.getElementById("image4").style.display = "none";
    } else if (click == "re3") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re3").style.transform = "scale(1.1)";
        document.getElementById("re3").style.border = "5px solid  #415daa";
        document.getElementById("re2").style.transform = "";
        document.getElementById("re2").style.border = "none";
        document.getElementById("re4").style.transform = "";
        document.getElementById("re4").style.border = "none";
        document.getElementById("image3").style.display = "block";
        document.getElementById("image2").style.display = "none";
        document.getElementById("image1").style.display = "none";
        document.getElementById("image4").style.display = "none";
    } else if (click == "re4") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re4").style.transform = "scale(1.1)";
        document.getElementById("re4").style.border = "5px solid  #415daa";
        document.getElementById("re3").style.transform = "";
        document.getElementById("re3").style.border = "none";
        document.getElementById("re2").style.transform = "";
        document.getElementById("re2").style.border = "none";
        document.getElementById("image4").style.display = "block";
        document.getElementById("image2").style.display = "none";
        document.getElementById("image3").style.display = "none";
        document.getElementById("image1").style.display = "none";
    } else if (click == "re5") {
        document.getElementById("re6").style.transform = "";
        document.getElementById("re6").style.border = "none";
        document.getElementById("re5").style.transform = "scale(1.1)";
        document.getElementById("re5").style.border = "5px solid  #ff6969";
        document.getElementById("re7").style.transform = "";
        document.getElementById("re7").style.border = "none";
        document.getElementById("re8").style.transform = "";
        document.getElementById("re8").style.border = "none";
        document.getElementById("image5").style.display = "block";
        document.getElementById("image6").style.display = "none";
        document.getElementById("image7").style.display = "none";
        document.getElementById("image8").style.display = "none";
    } else if (click == "re6") {
        document.getElementById("re5").style.transform = "";
        document.getElementById("re5").style.border = "none";
        document.getElementById("re6").style.transform = "scale(1.1)";
        document.getElementById("re6").style.border = "5px solid  #ff6969";
        document.getElementById("re7").style.transform = "";
        document.getElementById("re7").style.border = "none";
        document.getElementById("re8").style.transform = "";
        document.getElementById("re8").style.border = "none";
        document.getElementById("image6").style.display = "block";
        document.getElementById("image7").style.display = "none";
        document.getElementById("image8").style.display = "none";
        document.getElementById("image5").style.display = "none";
    } else if (click == "re7") {
        document.getElementById("re6").style.transform = "";
        document.getElementById("re6").style.border = "none";
        document.getElementById("re7").style.transform = "scale(1.1)";
        document.getElementById("re7").style.border = "5px solid  #ff6969";
        document.getElementById("re8").style.transform = "";
        document.getElementById("re8").style.border = "none";
        document.getElementById("re5").style.transform = "";
        document.getElementById("re5").style.border = "none";
        document.getElementById("image7").style.display = "block";
        document.getElementById("image8").style.display = "none";
        document.getElementById("image5").style.display = "none";
        document.getElementById("image6").style.display = "none";
    } else if (click == "re8") {
        document.getElementById("re7").style.transform = "";
        document.getElementById("re7").style.border = "none";
        document.getElementById("re8").style.transform = "scale(1.1)";
        document.getElementById("re8").style.border = "5px solid  #ff6969";
        document.getElementById("re6").style.transform = "";
        document.getElementById("re6").style.border = "none";
        document.getElementById("re5").style.transform = "";
        document.getElementById("re5").style.border = "none";
        document.getElementById("image8").style.display = "block";
        document.getElementById("image7").style.display = "none";
        document.getElementById("image6").style.display = "none";
        document.getElementById("image5").style.display = "none";
    } else if (click == "re9") {
        document.getElementById("re10").style.transform = "";
        document.getElementById("re10").style.border = "none";
        document.getElementById("re9").style.transform = "scale(1.1)";
        document.getElementById("re9").style.border = "5px solid  #3eb80e";
        document.getElementById("re11").style.transform = "";
        document.getElementById("re11").style.border = "none";
        document.getElementById("re12").style.transform = "";
        document.getElementById("re12").style.border = "none";
        document.getElementById("image9").style.display = "block";
        document.getElementById("image10").style.display = "none";
        document.getElementById("image11").style.display = "none";
        document.getElementById("image12").style.display = "none";
    } else if (click == "re10") {
        document.getElementById("re9").style.transform = "";
        document.getElementById("re9").style.border = "none";
        document.getElementById("re10").style.transform = "scale(1.1)";
        document.getElementById("re10").style.border = "5px solid  #3eb80e";
        document.getElementById("re11").style.transform = "";
        document.getElementById("re11").style.border = "none";
        document.getElementById("re12").style.transform = "";
        document.getElementById("re12").style.border = "none";
        document.getElementById("image10").style.display = "block";
        document.getElementById("image9").style.display = "none";
        document.getElementById("image11").style.display = "none";
        document.getElementById("image12").style.display = "none";
    } else if (click == "re11") {
        document.getElementById("re10").style.transform = "";
        document.getElementById("re10").style.border = "none";
        document.getElementById("re11").style.transform = "scale(1.1)";
        document.getElementById("re11").style.border = "5px solid  #3eb80e";
        document.getElementById("re9").style.transform = "";
        document.getElementById("re9").style.border = "none";
        document.getElementById("re12").style.transform = "";
        document.getElementById("re12").style.border = "none";
        document.getElementById("image11").style.display = "block";
        document.getElementById("image10").style.display = "none";
        document.getElementById("image9").style.display = "none";
        document.getElementById("image12").style.display = "none";
    } else if (click == "re12") {
        document.getElementById("re10").style.transform = "";
        document.getElementById("re10").style.border = "none";
        document.getElementById("re12").style.transform = "scale(1.1)";
        document.getElementById("re12").style.border = "5px solid  #3eb80e";
        document.getElementById("re9").style.transform = "";
        document.getElementById("re9").style.border = "none";
        document.getElementById("re11").style.transform = "";
        document.getElementById("re11").style.border = "none";
        document.getElementById("image12").style.display = "block";
        document.getElementById("image10").style.display = "none";
        document.getElementById("image11").style.display = "none";
        document.getElementById("image9").style.display = "none";
    }
}

window.pressed = function () {

    uploadimage.innerHTML = "Choose file";
    var a = document.getElementById('up-image');

    if (a.value == "")
    {
        uploadimage.innerHTML = "Choose file";
    } else
    {
        var theSplit = a.value.split('\\');
        uploadimage.innerHTML = theSplit[theSplit.length - 1];
//        uploadimage.innerHTML = "Choose file";
    }
};

function upload(btn) {

    if (btn == "final-upload") {

        uploadmodal.style.display = "none";
        uploadimage.innerHTML = "Choose file";
    }
}

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
//    uploadimage.innerHTML = "Choose file";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
//        uploadimage.innerHTML = "Choose file";
    }
}


function navigation(button) {


    if (button == "tosubmit") {
        document.getElementById("tosubmit-content").style.display = "block";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "none";
        document.getElementById("tosubmit").style.color = "#d86f19";
        document.getElementById("tosubmit").style.borderBottom = "2px solid #d86f19";
        document.getElementById("inreview").style.color = "#858383";
        document.getElementById("inreview").style.borderBottom = "none";
        document.getElementById("notaccepted").style.color = "#858383";
        document.getElementById("notaccepted").style.borderBottom = "none";
        document.getElementById("reviewed").style.color = "#858383";
        document.getElementById("reviewed").style.borderBottom = "none";
    } else if (button == "inreview") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "block";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "none";
        document.getElementById("inreview").style.color = "#d86f19";
        document.getElementById("inreview").style.borderBottom = "2px solid #d86f19";
        document.getElementById("tosubmit").style.color = "#858383";
        document.getElementById("tosubmit").style.borderBottom = "none";
        document.getElementById("notaccepted").style.color = "#858383";
        document.getElementById("notaccepted").style.borderBottom = "none";
        document.getElementById("reviewed").style.color = "#858383";
        document.getElementById("reviewed").style.borderBottom = "none";
    } else if (button == "notaccepted") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "block";
        document.getElementById("accepted-content").style.display = "none";
        document.getElementById("notaccepted").style.color = "#d86f19";
        document.getElementById("notaccepted").style.borderBottom = "2px solid #d86f19";
        document.getElementById("tosubmit").style.color = "#858383";
        document.getElementById("tosubmit").style.borderBottom = "none";
        document.getElementById("inreview").style.color = "#858383";
        document.getElementById("inreview").style.borderBottom = "none";
        document.getElementById("reviewed").style.color = "#858383";
        document.getElementById("reviewed").style.borderBottom = "none";
    } else if (button == "reviewed") {
        document.getElementById("tosubmit-content").style.display = "none";
        document.getElementById("inreview-content").style.display = "none";
        document.getElementById("notaccepted-content").style.display = "none";
        document.getElementById("accepted-content").style.display = "block";
        document.getElementById("reviewed").style.color = "#d86f19";
        document.getElementById("reviewed").style.borderBottom = "2px solid #d86f19";
        document.getElementById("tosubmit").style.color = "#858383";
        document.getElementById("tosubmit").style.borderBottom = "none";
        document.getElementById("inreview").style.color = "#858383";
        document.getElementById("inreview").style.borderBottom = "none";
        document.getElementById("notaccepted").style.color = "#858383";
        document.getElementById("notaccepted").style.borderBottom = "none";
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
        document.getElementById("image1").style.display = "block";
        document.getElementById("image2").style.display = "none";
        document.getElementById("image3").style.display = "none";
        document.getElementById("image4").style.display = "none";
    } else if (click == "re2") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re2").style.transform = "scale(1.1)";
        document.getElementById("re2").style.border = "5px solid  #415daa";
        document.getElementById("re3").style.transform = "";
        document.getElementById("re3").style.border = "none";
        document.getElementById("re4").style.transform = "";
        document.getElementById("re4").style.border = "none";
        document.getElementById("image2").style.display = "block";
        document.getElementById("image1").style.display = "none";
        document.getElementById("image3").style.display = "none";
        document.getElementById("image4").style.display = "none";
    } else if (click == "re3") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re3").style.transform = "scale(1.1)";
        document.getElementById("re3").style.border = "5px solid  #415daa";
        document.getElementById("re2").style.transform = "";
        document.getElementById("re2").style.border = "none";
        document.getElementById("re4").style.transform = "";
        document.getElementById("re4").style.border = "none";
        document.getElementById("image3").style.display = "block";
        document.getElementById("image2").style.display = "none";
        document.getElementById("image1").style.display = "none";
        document.getElementById("image4").style.display = "none";
    } else if (click == "re4") {
        document.getElementById("re1").style.transform = "";
        document.getElementById("re1").style.border = "none";
        document.getElementById("re4").style.transform = "scale(1.1)";
        document.getElementById("re4").style.border = "5px solid  #415daa";
        document.getElementById("re3").style.transform = "";
        document.getElementById("re3").style.border = "none";
        document.getElementById("re2").style.transform = "";
        document.getElementById("re2").style.border = "none";
        document.getElementById("image4").style.display = "block";
        document.getElementById("image2").style.display = "none";
        document.getElementById("image3").style.display = "none";
        document.getElementById("image1").style.display = "none";
    } else if (click == "re5") {
        document.getElementById("re6").style.transform = "";
        document.getElementById("re6").style.border = "none";
        document.getElementById("re5").style.transform = "scale(1.1)";
        document.getElementById("re5").style.border = "5px solid  #ff6969";
        document.getElementById("re7").style.transform = "";
        document.getElementById("re7").style.border = "none";
        document.getElementById("re8").style.transform = "";
        document.getElementById("re8").style.border = "none";
        document.getElementById("image5").style.display = "block";
        document.getElementById("image6").style.display = "none";
        document.getElementById("image7").style.display = "none";
        document.getElementById("image8").style.display = "none";
    } else if (click == "re6") {
        document.getElementById("re5").style.transform = "";
        document.getElementById("re5").style.border = "none";
        document.getElementById("re6").style.transform = "scale(1.1)";
        document.getElementById("re6").style.border = "5px solid  #ff6969";
        document.getElementById("re7").style.transform = "";
        document.getElementById("re7").style.border = "none";
        document.getElementById("re8").style.transform = "";
        document.getElementById("re8").style.border = "none";
        document.getElementById("image6").style.display = "block";
        document.getElementById("image7").style.display = "none";
        document.getElementById("image8").style.display = "none";
        document.getElementById("image5").style.display = "none";
    } else if (click == "re7") {
        document.getElementById("re6").style.transform = "";
        document.getElementById("re6").style.border = "none";
        document.getElementById("re7").style.transform = "scale(1.1)";
        document.getElementById("re7").style.border = "5px solid  #ff6969";
        document.getElementById("re8").style.transform = "";
        document.getElementById("re8").style.border = "none";
        document.getElementById("re5").style.transform = "";
        document.getElementById("re5").style.border = "none";
        document.getElementById("image7").style.display = "block";
        document.getElementById("image8").style.display = "none";
        document.getElementById("image5").style.display = "none";
        document.getElementById("image6").style.display = "none";
    } else if (click == "re8") {
        document.getElementById("re7").style.transform = "";
        document.getElementById("re7").style.border = "none";
        document.getElementById("re8").style.transform = "scale(1.1)";
        document.getElementById("re8").style.border = "5px solid  #ff6969";
        document.getElementById("re6").style.transform = "";
        document.getElementById("re6").style.border = "none";
        document.getElementById("re5").style.transform = "";
        document.getElementById("re5").style.border = "none";
        document.getElementById("image8").style.display = "block";
        document.getElementById("image7").style.display = "none";
        document.getElementById("image6").style.display = "none";
        document.getElementById("image5").style.display = "none";
    } else if (click == "re9") {
        document.getElementById("re10").style.transform = "";
        document.getElementById("re10").style.border = "none";
        document.getElementById("re9").style.transform = "scale(1.1)";
        document.getElementById("re9").style.border = "5px solid  #3eb80e";
        document.getElementById("re11").style.transform = "";
        document.getElementById("re11").style.border = "none";
        document.getElementById("re12").style.transform = "";
        document.getElementById("re12").style.border = "none";
        document.getElementById("image9").style.display = "block";
        document.getElementById("image10").style.display = "none";
        document.getElementById("image11").style.display = "none";
        document.getElementById("image12").style.display = "none";
    } else if (click == "re10") {
        document.getElementById("re9").style.transform = "";
        document.getElementById("re9").style.border = "none";
        document.getElementById("re10").style.transform = "scale(1.1)";
        document.getElementById("re10").style.border = "5px solid  #3eb80e";
        document.getElementById("re11").style.transform = "";
        document.getElementById("re11").style.border = "none";
        document.getElementById("re12").style.transform = "";
        document.getElementById("re12").style.border = "none";
        document.getElementById("image10").style.display = "block";
        document.getElementById("image9").style.display = "none";
        document.getElementById("image11").style.display = "none";
        document.getElementById("image12").style.display = "none";
    } else if (click == "re11") {
        document.getElementById("re10").style.transform = "";
        document.getElementById("re10").style.border = "none";
        document.getElementById("re11").style.transform = "scale(1.1)";
        document.getElementById("re11").style.border = "5px solid  #3eb80e";
        document.getElementById("re9").style.transform = "";
        document.getElementById("re9").style.border = "none";
        document.getElementById("re12").style.transform = "";
        document.getElementById("re12").style.border = "none";
        document.getElementById("image11").style.display = "block";
        document.getElementById("image10").style.display = "none";
        document.getElementById("image9").style.display = "none";
        document.getElementById("image12").style.display = "none";
    } else if (click == "re12") {
        document.getElementById("re10").style.transform = "";
        document.getElementById("re10").style.border = "none";
        document.getElementById("re12").style.transform = "scale(1.1)";
        document.getElementById("re12").style.border = "5px solid  #3eb80e";
        document.getElementById("re9").style.transform = "";
        document.getElementById("re9").style.border = "none";
        document.getElementById("re11").style.transform = "";
        document.getElementById("re11").style.border = "none";
        document.getElementById("image12").style.display = "block";
        document.getElementById("image10").style.display = "none";
        document.getElementById("image11").style.display = "none";
        document.getElementById("image9").style.display = "none";
    }
}

window.pressed = function () {

    uploadimage.innerHTML = "Choose file";
    var a = document.getElementById('up-image');

    if (a.value == "")
    {
        uploadimage.innerHTML = "Choose file";
    } else
    {
        var theSplit = a.value.split('\\');
        uploadimage.innerHTML = theSplit[theSplit.length - 1];
//        uploadimage.innerHTML = "Choose file";
    }
};

function upload(btn) {

    if (btn == "final-upload") {

        uploadmodal.style.display = "none";
        uploadimage.innerHTML = "Choose file";
    }
}

function loadphotos() {
    alert("please work");
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {
                var responce = request.responseText;
                document.getElementById("load").innerHTML = responce;
                alert(responce);
            }
        }
    }
    ;

    request.open("POST", "../../PhotographerUploadPhoto", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}