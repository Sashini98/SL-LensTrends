
/* global uploadimage, uploadmodal, uploadfile, photographid, deleteaccepted, checked */

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


function clickimage(click, section, photoid, itemcount) {
    if (section == "image-box-inreview") {
        var numitems = itemcount;
        var i;
        for (i = 0; i < numitems; i++) {
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

            } else {
                document.getElementById("review" + (i + 1)).style.transform = "scale(1)";
                document.getElementById("review" + (i + 1)).style.border = "none";
            }
        }
    } else if (section == "image-box-rejected") {
        var numitems = itemcount;
        var i;
        for (i = 0; i < numitems; i++) {
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
                            document.getElementById("fileid-notaccepted").innerHTML = details[3];
                        }
                    }
                };

                request.open("POST", "../../DetailsofPhotos", false);
                request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                request.send("photographid=" + photoid);

            } else {
                document.getElementById("rejected" + (i + 1)).style.transform = "scale(1)";
                document.getElementById("rejected" + (i + 1)).style.border = "none";
            }

        }
    } else if (section == "image-box-accepted") {
        var numitems = itemcount;
        var i;
        for (i = 0; i < numitems; i++) {
            if (click == "accept" + (i + 1)) {
                document.getElementById(click).style.transform = "scale(1.1)";
                document.getElementById(click).style.border = "5px solid  #3eb80e";

                var request = new XMLHttpRequest();

                request.onreadystatechange = function () {

                    if (request.status === 200) {
                        if (request.readyState === 4) {
                            var responce = request.responseText;
                            var details = JSON.parse(responce);
                            document.getElementById("headingaccepted").innerHTML = details[0];
                            document.getElementById("dateaccepted").innerHTML = details[1];
                            document.getElementById("fileidaccepted").innerHTML = details[3];
                        }
                    }
                };

                request.open("POST", "../../DetailsofPhotos", false);
                request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                request.send("photographid=" + photoid);

            } else {
                document.getElementById("accept" + (i + 1)).style.transform = "";
                document.getElementById("accept" + (i + 1)).style.border = "none";
            }

        }
    }
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
    accepted = document.querySelectorAll('.selection-accepted');
    //	main = document.querySelectorAll('main')[0];
    detailsimg = document.querySelector('.detailsimg');
//                                    detailsimg.src = "../../Resources/Img/profile/l1.jpg";
    document.getElementById("r1").checked = true;
    document.getElementById("review1").style.transform = "scale(1.1)";
    document.getElementById("review1").style.border = "5px solid  #415daa";
    document.getElementById("rejected1").style.transform = "scale(1.1)";
    document.getElementById("rejected1").style.border = "5px solid  #ff6969";
    document.getElementById("accept1").style.transform = "scale(1.1)";
    document.getElementById("accept1").style.border = "5px solid  #3eb80e";
    
    elm.forEach(function (elm) {
        elm.addEventListener('click', function (event) {
            detailsimg.src = event.target.src;
            detailsimg.setAttribute("photo_id", event.target.getAttribute("photo_id"));
        });
    });

    accepted.forEach(function (accepted) {
        accepted.addEventListener('click', function (event) {
//            detailsimg.src = event.target.src;
            deleteaccepted.setAttribute("srcpath", event.target.src);
            deleteaccepted.setAttribute("photo-id-accepted", event.target.getAttribute("photo-id-accepted"));
        });
    });


    var modal = document.getElementById('myModal');
    var Downmodal = document.getElementById('DownModal');
    var closemodal = document.getElementById('upload-modal');
    window.onclick = function (event) {
        if (event.target == modal) { //modal close window onclick for download and add release
            modal.style.display = "none";
        } else if (event.target == Downmodal) {
            Downmodal.style.display = "none";
        } else if (event.target == closemodal) { //modal close window onclick for upload button
            closemodal.style.display = "none";
            document.getElementById("up-image").value = '';
            document.getElementById("uploadimage").innerHTML = "Choose file";
            document.getElementById("upload-modal").style.display = "none";
        }
    }


};

function upload(btn) {

    if (btn == "final-upload") {
        var uploadmodal = document.getElementById("upload-modal");
        uploadmodal.style.display = "none";
        uploadimage.innerHTML = "Choose file";
        document.getElementById("up-image").value = '';
    }
}

function cleardata() {
    document.getElementById("up-image").value = '';
    document.getElementById("uploadimage").innerHTML = "Choose file";
    document.getElementById("upload-modal").style.display = "none";

}

function deletephoto(para) {

    var txt;
    var r = confirm("Do you want to Delete it!");
    if (r == true) {
//        txt = "You pressed OK!";


        if (para == "delete-tosubmit") {
            var path = document.getElementById("image").src;
            var idd = document.getElementById("image").getAttribute("photo_id");
            var request = new XMLHttpRequest();
            request.onreadystatechange = function () {

                if (request.status === 200) {
                    if (request.readyState === 4) {
                        var responce = request.responseText;
                        alert(responce);
                    }
                }
            };
            request.open("POST", "../../DeletePhoto", false);
            request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            request.send("pathtobedeleted=" + path + "&idd=" + idd);
            location.reload();

        } else if (para == "deleteaccepted") {
            var path = document.getElementById("deleteaccepted").getAttribute("srcpath");
            var idd = document.getElementById("deleteaccepted").getAttribute("photo-id-accepted");
            var request = new XMLHttpRequest();
            request.onreadystatechange = function () {

                if (request.status === 200) {
                    if (request.readyState === 4) {
                        var responce = request.responseText;
                        alert(responce);
                    }
                }
            };
            request.open("POST", "../../DeletePhoto", false);
            request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            request.send("pathtobedeleted=" + path + "&idd=" + idd);
            location.reload();
        }

    } else {
        txt = "Deletion Cancelled";
        alert(txt);
    }
}





