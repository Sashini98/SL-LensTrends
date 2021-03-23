
/* global uploadimage, uploadmodal, uploadfile */

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


function clickimage(click, section, photoid,itemcount) {
    if (section == "image-box-inreview") {
        var numitems = itemcount;
        var i;
        for (i = 0; i <= numitems; i++) {
//            alert(i);
//            alert(click);
//            alert("review" + (i + 1));
            if (click == "review" + (i + 1)) {              
                document.getElementById(click).style.transform = "scale(1.1)";
                document.getElementById(click).style.border = "5px solid  #415daa";
                
                var request = new XMLHttpRequest();

                request.onreadystatechange = function () {

                    if (request.status === 200) {
                        if (request.readyState === 4) {
                            var responce = request.responseText;
                            var details = JSON.parse(responce);

                            document.getElementById("heading").innerHTML = details[0];
                            document.getElementById("uploaddate").innerHTML = details[1];
                            document.getElementById("heading2").innerHTML = details[0];
                            document.getElementById("category").innerHTML = details[2];
                            document.getElementById("filedid").innerHTML = details[3];
                        }
                    }
                };

                request.open("POST", "../../DetailsofPhotos", false);
                request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                request.send("photographid=" + photoid);

//                document.getElementById("image1").style.display = "block";
//                document.getElementById("image2").style.display = "none";
//                document.getElementById("image3").style.display = "none";
//                document.getElementById("image4").style.display = "none";
            } else {
                document.getElementById("review" + (i + 1)).style.transform = "";
                document.getElementById("review" + (i + 1)).style.border = "none";
            }
        }
    } else if (section == "image-box-rejected") {
        var numitems = itemcount;
        var i;
        for (i = 0; i <= numitems; i++) {
            if (click == "rejected" + (i + 1)) {
                document.getElementById(click).style.transform = "scale(1.1)";
                document.getElementById(click).style.border = "5px solid  #ff6969";

                var request = new XMLHttpRequest();

                request.onreadystatechange = function () {

                    if (request.status === 200) {
                        if (request.readyState === 4) {
                            var responce = request.responseText;
                            var details = JSON.parse(responce);
//
                            document.getElementById("heading-notaccepted").innerHTML = details[0];
                            document.getElementById("date-notaccepted").innerHTML = details[1];
//                            document.getElementById("heading2").innerHTML = details[0];
//                            document.getElementById("category").innerHTML = details[2];
                            document.getElementById("fileid-notaccepted").innerHTML = details[3];
                        }
                    }
                };

                request.open("POST", "../../DetailsofPhotos", false);
                request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                request.send("photographid=" + photoid);

//                document.getElementById("image1").style.display = "block";
//                document.getElementById("image2").style.display = "none";
//                document.getElementById("image3").style.display = "none";
//                document.getElementById("image4").style.display = "none";
            } else {
                document.getElementById("rejected" + (i + 1)).style.transform = "";
                document.getElementById("rejected" + (i + 1)).style.border = "none";
            }

        }
    }


//    if (click == "re1") {
//        document.getElementById("re1").style.transform = "scale(1.1)";
//        document.getElementById("re1").style.border = "5px solid  #415daa";
//        document.getElementById("re2").style.transform = "";
//        document.getElementById("re2").style.border = "none";
//        document.getElementById("re3").style.transform = "";
//        document.getElementById("re3").style.border = "none";
//        document.getElementById("re4").style.transform = "";
//        document.getElementById("re4").style.border = "none";
//        document.getElementById("image1").style.display = "block";
//        document.getElementById("image2").style.display = "none";
//        document.getElementById("image3").style.display = "none";
//        document.getElementById("image4").style.display = "none";
//    } else if (click == "re2") {
//        document.getElementById("re1").style.transform = "";
//        document.getElementById("re1").style.border = "none";
//        document.getElementById("re2").style.transform = "scale(1.1)";
//        document.getElementById("re2").style.border = "5px solid  #415daa";
//        document.getElementById("re3").style.transform = "";
//        document.getElementById("re3").style.border = "none";
//        document.getElementById("re4").style.transform = "";
//        document.getElementById("re4").style.border = "none";
//        document.getElementById("image2").style.display = "block";
//        document.getElementById("image1").style.display = "none";
//        document.getElementById("image3").style.display = "none";
//        document.getElementById("image4").style.display = "none";
//    } else if (click == "re3") {
//        document.getElementById("re1").style.transform = "";
//        document.getElementById("re1").style.border = "none";
//        document.getElementById("re3").style.transform = "scale(1.1)";
//        document.getElementById("re3").style.border = "5px solid  #415daa";
//        document.getElementById("re2").style.transform = "";
//        document.getElementById("re2").style.border = "none";
//        document.getElementById("re4").style.transform = "";
//        document.getElementById("re4").style.border = "none";
//        document.getElementById("image3").style.display = "block";
//        document.getElementById("image2").style.display = "none";
//        document.getElementById("image1").style.display = "none";
//        document.getElementById("image4").style.display = "none";
//    } else if (click == "re4") {
//        document.getElementById("re1").style.transform = "";
//        document.getElementById("re1").style.border = "none";
//        document.getElementById("re4").style.transform = "scale(1.1)";
//        document.getElementById("re4").style.border = "5px solid  #415daa";
//        document.getElementById("re3").style.transform = "";
//        document.getElementById("re3").style.border = "none";
//        document.getElementById("re2").style.transform = "";
//        document.getElementById("re2").style.border = "none";
//        document.getElementById("image4").style.display = "block";
//        document.getElementById("image2").style.display = "none";
//        document.getElementById("image3").style.display = "none";
//        document.getElementById("image1").style.display = "none";
//    } 
//    else if (click == "re5") {
//        document.getElementById("re6").style.transform = "";
//        document.getElementById("re6").style.border = "none";
//        document.getElementById("re5").style.transform = "scale(1.1)";
//        document.getElementById("re5").style.border = "5px solid  #ff6969";
//        document.getElementById("re7").style.transform = "";
//        document.getElementById("re7").style.border = "none";
//        document.getElementById("re8").style.transform = "";
//        document.getElementById("re8").style.border = "none";
//        document.getElementById("image5").style.display = "block";
//        document.getElementById("image6").style.display = "none";
//        document.getElementById("image7").style.display = "none";
//        document.getElementById("image8").style.display = "none";
//    } else if (click == "re6") {
//        document.getElementById("re5").style.transform = "";
//        document.getElementById("re5").style.border = "none";
//        document.getElementById("re6").style.transform = "scale(1.1)";
//        document.getElementById("re6").style.border = "5px solid  #ff6969";
//        document.getElementById("re7").style.transform = "";
//        document.getElementById("re7").style.border = "none";
//        document.getElementById("re8").style.transform = "";
//        document.getElementById("re8").style.border = "none";
//        document.getElementById("image6").style.display = "block";
//        document.getElementById("image7").style.display = "none";
//        document.getElementById("image8").style.display = "none";
//        document.getElementById("image5").style.display = "none";
//    } else if (click == "re7") {
//        document.getElementById("re6").style.transform = "";
//        document.getElementById("re6").style.border = "none";
//        document.getElementById("re7").style.transform = "scale(1.1)";
//        document.getElementById("re7").style.border = "5px solid  #ff6969";
//        document.getElementById("re8").style.transform = "";
//        document.getElementById("re8").style.border = "none";
//        document.getElementById("re5").style.transform = "";
//        document.getElementById("re5").style.border = "none";
//        document.getElementById("image7").style.display = "block";
//        document.getElementById("image8").style.display = "none";
//        document.getElementById("image5").style.display = "none";
//        document.getElementById("image6").style.display = "none";
//    } else if (click == "re8") {
//        document.getElementById("re7").style.transform = "";
//        document.getElementById("re7").style.border = "none";
//        document.getElementById("re8").style.transform = "scale(1.1)";
//        document.getElementById("re8").style.border = "5px solid  #ff6969";
//        document.getElementById("re6").style.transform = "";
//        document.getElementById("re6").style.border = "none";
//        document.getElementById("re5").style.transform = "";
//        document.getElementById("re5").style.border = "none";
//        document.getElementById("image8").style.display = "block";
//        document.getElementById("image7").style.display = "none";
//        document.getElementById("image6").style.display = "none";
//        document.getElementById("image5").style.display = "none";
//    } 
//
//    else if (click == "re9") {
//        document.getElementById("re10").style.transform = "";
//        document.getElementById("re10").style.border = "none";
//        document.getElementById("re9").style.transform = "scale(1.1)";
//        document.getElementById("re9").style.border = "5px solid  #3eb80e";
//        document.getElementById("re11").style.transform = "";
//        document.getElementById("re11").style.border = "none";
//        document.getElementById("re12").style.transform = "";
//        document.getElementById("re12").style.border = "none";
//        document.getElementById("image9").style.display = "block";
//        document.getElementById("image10").style.display = "none";
//        document.getElementById("image11").style.display = "none";
//        document.getElementById("image12").style.display = "none";
//    } else if (click == "re10") {
//        document.getElementById("re9").style.transform = "";
//        document.getElementById("re9").style.border = "none";
//        document.getElementById("re10").style.transform = "scale(1.1)";
//        document.getElementById("re10").style.border = "5px solid  #3eb80e";
//        document.getElementById("re11").style.transform = "";
//        document.getElementById("re11").style.border = "none";
//        document.getElementById("re12").style.transform = "";
//        document.getElementById("re12").style.border = "none";
//        document.getElementById("image10").style.display = "block";
//        document.getElementById("image9").style.display = "none";
//        document.getElementById("image11").style.display = "none";
//        document.getElementById("image12").style.display = "none";
//    } else if (click == "re11") {
//        document.getElementById("re10").style.transform = "";
//        document.getElementById("re10").style.border = "none";
//        document.getElementById("re11").style.transform = "scale(1.1)";
//        document.getElementById("re11").style.border = "5px solid  #3eb80e";
//        document.getElementById("re9").style.transform = "";
//        document.getElementById("re9").style.border = "none";
//        document.getElementById("re12").style.transform = "";
//        document.getElementById("re12").style.border = "none";
//        document.getElementById("image11").style.display = "block";
//        document.getElementById("image10").style.display = "none";
//        document.getElementById("image9").style.display = "none";
//        document.getElementById("image12").style.display = "none";
//    } else if (click == "re12") {
//        document.getElementById("re10").style.transform = "";
//        document.getElementById("re10").style.border = "none";
//        document.getElementById("re12").style.transform = "scale(1.1)";
//        document.getElementById("re12").style.border = "5px solid  #3eb80e";
//        document.getElementById("re9").style.transform = "";
//        document.getElementById("re9").style.border = "none";
//        document.getElementById("re11").style.transform = "";
//        document.getElementById("re11").style.border = "none";
//        document.getElementById("image12").style.display = "block";
//        document.getElementById("image10").style.display = "none";
//        document.getElementById("image11").style.display = "none";
//        document.getElementById("image9").style.display = "none";
//    }
}

window.pressedupload = function () {

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

window.pressedrelease = function () {

    uploadfile.innerHTML = "Choose file";
    var a = document.getElementById('up-modal');

    if (a.value == "")
    {
        uploadfile.innerHTML = "Choose file";
    } else
    {
        var theSplit = a.value.split('\\');
        uploadfile.innerHTML = theSplit[theSplit.length - 1];
//        uploadimage.innerHTML = "Choose file";

    }
};

function loadphotos() {

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {
                var responce = request.responseText;
                document.getElementById("load").innerHTML = responce;

            }
        }
    }
    ;

    request.open("POST", "../../PhotographerUploadPhoto", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}



window.onload = function () {
    loadphotos();
    elm = document.querySelectorAll('.selection-img');
    //	main = document.querySelectorAll('main')[0];
    detailsimg = document.querySelector('.detailsimg');
//                                    detailsimg.src = "../../Resources/Img/profile/l1.jpg";

    elm.forEach(function (elm) {
        elm.addEventListener('click', function (event) {
            detailsimg.src = event.target.src;
        });
    });

// modal for download release
//    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
//    var btn = document.getElementById("download");

    // Get the <span> element that closes the modal
//    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
//    btn.onclick = function () {
//        modal.style.display = "block";
//    };

    // When the user clicks on <span> (x), close the modal
//    span.onclick = function () {
//        modal.style.display = "none";
        //    uploadimage.innerHTML = "Choose file";
//    };


// modal for upload release 
//    var Downmodal = document.getElementById("DownModal");

    // Get the button that opens the modal
//    var Downbtn = document.getElementById("uploadrelease");

    // Get the <span> element that closes the modal
//    var Downspan = document.getElementsByClassName("downclose")[0];

    // When the user clicks the button, open the modal 
//    Downbtn.onclick = function () {
//        Downmodal.style.display = "block";
//    };

    // When the user clicks on <span> (x), close the modal
//    Downspan.onclick = function () {
//        Downmodal.style.display = "none";
        //    uploadimage.innerHTML = "Choose file";
//    };

//    // When the user clicks anywhere outside of the modal, close it
//    window.onclick = function (event) {
//        if (event.target == Downmodal) {
//            Downmodal.style.display = "none";
//            //        uploadimage.innerHTML = "Choose file";
//        }
//    };


//    var uploadmodal = document.getElementById("upload-modal");

// Get the button that opens the modal
//    var btnup = document.getElementById("upload-photo");

// Get the <span> element that closes the modal
//    var spanup = document.getElementsByClassName("upload-close")[0];

// When the user clicks the button, open the modal 
//    btnup.onclick = function () {
//        uploadmodal.style.display = "block";
//    };

function clear(){   
     
        document.getElementById("up-image").value = '';
        document.getElementById("uploadimage").innerHTML = 'Choose file';
        document.getElementById("upload-modal").style.display = "none";

}



    // When the user clicks anywhere outside of the modal, close it


};

function upload(btn) {

    if (btn == "final-upload") {
        var uploadmodal = document.getElementById("upload-modal");
        uploadmodal.style.display = "none";
        uploadimage.innerHTML = "Choose file";
        document.getElementById("up-image").value = '';
    }
}






