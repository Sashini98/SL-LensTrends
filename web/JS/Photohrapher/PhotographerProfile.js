
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
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
    if (event.target == uploadmodal) {
        uploadmodal.style.display = "none";
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
        
    }
};

function upload(btn) {

    if (btn == "final-upload") {

        uploadmodal.style.display = "none";
        uploadimage.innerHTML = "Choose file";
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