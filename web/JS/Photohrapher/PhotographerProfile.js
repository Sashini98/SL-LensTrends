
/* global uploadimage */

var uploadmodal = document.getElementById("upload-modal");

// Get the button that opens the modal
var btnup = document.getElementById("upload-image-front");

// Get the <span> element that closes the modal
var spanup = document.getElementsByClassName("upload-close")[0];

// When the user clicks the button, open the modal 
btnup.onclick = function () {
    uploadmodal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
spanup.onclick = function () {
    uploadmodal.style.display = "none";
    document.getElementById("up-image").value = "";
    document.getElementById("sample").style.display = "none";
    uploadimage.innerHTML = "Choose file";
    document.getElementById("title-input").style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == uploadmodal) {
        uploadmodal.style.display = "none";
        document.getElementById("up-image").value = "";
        document.getElementById("sample").style.display = "none";
        uploadimage.innerHTML = "Choose file";
        document.getElementById("title-input").style.display = "none";
    }

}



window.pressed = function () {
    document.getElementById("sample").style.display = "block";
    uploadimage.innerHTML = "Choose file";
    var a = document.getElementById('up-image');

    if (a.value == "")
    {
        uploadimage.innerHTML = "Choose file";
    } else
    {
        var theSplit = a.value.split('\\');
        uploadimage.innerHTML = theSplit[theSplit.length - 1];
//        document.getElementById('up-image').value = '';
    }
};

function upload(btn) {

    if (btn == "final-upload") {
        uploadmodal.style.display = "none";
        uploadimage.innerHTML = "Choose file";
        document.getElementById("up-image").value = "";
    }
}


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
        document.getElementById("up-image").value = "";
        uploadimage.innerHTML = "Choose file";
        document.getElementById("title-input").style.display = "none";
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
}

function filevalidation() {
    var fileInput = document.getElementById('up-image');

    var filePath = fileInput.value;
    var filesize = fileInput.files[0].size;
    var sizelimit = 25000000; // file sixe limit of 25MB
    var lowersizelimit = 1000000; 

    // Allowing file type 
    var allowedExtensions = /(\.jpg|\.jpeg)$/i;

    if (!allowedExtensions.exec(filePath)) {
        alert('Upload only JPEG or JPG image');
        fileInput.value = '';
        document.getElementById('uploadimage').innerHTML = "Choose file";
        return false;
    } else if (filesize => sizelimit) {
        alert('Upload Images between 1MP and 25MP');
        return false;
    } else if (filesize <= lowersizelimit) {
        alert('Upload Images between 1MP and 25MP');
        return false;
    }
//
//
//        if (fileInput.files && fileInput.files[0]) {
//
//            var reader = new FileReader();
//            reader.onload = function (e) {
//
//            };
//
//            reader.readAsDataURL(fileInput.files[0]);
//        }
    }
