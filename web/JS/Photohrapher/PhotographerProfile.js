
/* global chooseimage, src, URL */

var uploadmodal = document.getElementById("upload-modal");

// Get the button that opens the modal
var btnup = document.getElementById("upload-image-front");

// Get the <span> element that closes the modal
var spanup = document.getElementsByClassName("upload-close")[0];

// When the user clicks the button, open the modal 
btnup.onclick = function () {
    uploadmodal.style.display = "block";
//    document.getElementById("upimage").value = "";

//    document.getElementById("chooseimage").innerHTML = "Choose File"
}

// When the user clicks on <span> (x), close the modal
spanup.onclick = function () {
    uploadmodal.style.display = "none";
    uploadmodal.style.display = "none";
    document.getElementById("upimage").value = "";
    document.getElementById("sample").style.display = "none";
    document.getElementById("chooseimage").innerHTML = "Choose file";
    document.getElementById("title-input").style.display = "none";
    document.getElementById("title-input").value = "";

}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == uploadmodal) {
        uploadmodal.style.display = "none";
        document.getElementById("upimage").value = "";
        document.getElementById("sample").style.display = "none";
        document.getElementById("chooseimage").innerHTML = "Choose file";
        document.getElementById("title-input").style.display = "none";
    }

}



window.pressed = function () {
    document.getElementById("sample").style.display = "block";
//    document.getElementById("chooseimage").innerHTML = "Choose file";
    var a = document.getElementById("upimage");

    if (a.value == "")
    {
        document.getElementById("chooseimage").innerHTML = "Choose file";
    } else
    {
        var theSplit = a.value.split('\\');
//        var name = theSplit[theSplit.length - 1];
        document.getElementById("chooseimage").innerHTML = theSplit[theSplit.length - 1];
//        document.getElementById('upimage').value = '';
    }
};



function showPreviewOne(event) {
    if (event.target.files.length > 0) {
        let src = URL.createObjectURL(event.target.files[0]);
        let preview = document.getElementById("sample");
        preview.src = src;
        preview.style.display = "block";
        document.getElementById("title-input").style.display = "block";

    }
}

function myImgRemoveFunctionOne(btn2) {
    if (btn2 == "remove-upload") {
        document.getElementById("sample").style.display = "none";
        document.getElementById("upimage").value = "";
        document.getElementById("title-input").style.display = "none";
        document.getElementById("chooseimage").innerHTML = "Choose file";
    }
}

function loadProfilephotos() {

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {
                var responce = request.responseText;
                document.getElementById("image-table").innerHTML = responce;

            }
        }
    }
    ;

    request.open("POST", "../../PhotographerProfile", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}

window.onload = function () {
    loadProfilephotos();
};

function deleteportfoliophoto(photoid, path) {
    var txt;
    var r = confirm("Do you want to Delete it!");
    if (r == true) {
        var request = new XMLHttpRequest();
        request.onreadystatechange = function () {

            if (request.status === 200) {
                if (request.readyState === 4) {
                    var responce = request.responseText;
                    alert(responce);
                }
            }
        };
        request.open("POST", "../../DeletePortfolioPhotos", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("pathtobedeleted=" + path + "&id=" + photoid);
        location.reload();
    } else {
        txt = "Deletion Cancelled";
        alert(txt);
    }
}

function filevalidation() {
    var fileInput = document.getElementById('upimage');
//    alert(fileInput);
    var filePath = fileInput.value;
    var filesize = fileInput.files[0].size;
    var lowersizelimit = 1000000; // lowest size to upload

    // Allowing file type 
    var allowedExtensions = /(\.jpg|\.jpeg)$/i;

    if (!allowedExtensions.exec(filePath)) {
        alert('Upload only JPEG or JPG image');
        document.getElementById('upimage').value = '';
        document.getElementById('chooseimage').innerHTML = "Choose file";
//        document.getElementById('uploadimage').innerHTML = "Choose file";
//        document.getElementById('upimage').value = "";
        document.getElementById('sample').style.display = "none";
        document.getElementById("title-input").style.display = "none";
        return false;
    }
    if (filesize <= lowersizelimit) {
        alert('Image is less then 1MP, Upload Images between 1MP and 25MP');
        document.getElementById("sample").style.display = "none";
        document.getElementById("upimage").value = "";
        document.getElementById("title-input").style.display = "none";
        document.getElementById("chooseimage").innerHTML = "Choose file";
        return false;
    }

}

function uploadimage() {
//    alert(document.getElementById("upload-image").files[0]);
    var title = document.getElementById("title").value;
    if (document.getElementById("upimage").value == "") {
        alert("Select Images to Upload");
    } else {
        var file = document.getElementById("upimage").files[0];
        var formdata = new FormData();
        formdata.append("file1", file);
        formdata.append("title", title);
        var request = new XMLHttpRequest();
        request.onreadystatechange = function () {
            if (request.readyState === 4) {
                if (request.status === 200) {
                    document.getElementById('upload-modal').style.display = 'none';
                    var responce = request.responseText;
                    alert(responce);
                }
            }

        };
        request.open("POST", "../../UploadforPortfolio", false);
        request.send(formdata);
        location.reload();
    }
}