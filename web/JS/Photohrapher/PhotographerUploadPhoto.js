
/* global uploadimage, uploadmodal, uploadfile, photographid, deleteaccepted, checked, deleterejected */

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
    var a = document.getElementById('upimage');
    var theSplit = a.value.split('\\');
    document.getElementById("uploadimage").innerHTML = theSplit[theSplit.length - 1];
};

window.pressedmodalrelease = function () {
    var b = document.getElementById('upmodalmodal');
    var theSplit = b.value.split('\\');
    document.getElementById("fileNamemodal").innerHTML = theSplit[theSplit.length - 1];
};

window.pressedpropertyrelease = function () {

    var c = document.getElementById('upmodalproperty');
    var theSplit = c.value.split('\\');
    document.getElementById("fileNameproperty").innerHTML = theSplit[theSplit.length - 1];

};

function submitrelease() {

    var property = document.getElementById("upmodalproperty").value;
    var modal = document.getElementById("upmodalmodal").value;
    var idd = document.getElementById("image").getAttribute("photo_id");
alert(property);
alert(modal);
    if (property == "" && modal == "") {
        alert("No files Choosen");
        return false;
    } else {      
        
        var propertpdf = document.getElementById("upmodalproperty").files[0];
        var modalpdf = document.getElementById("upmodalmodal").files[0];
       
        var formdata = new FormData();
        formdata.append("propertyfile", propertpdf);
        formdata.append("modalfile", modalpdf);
        formdata.append("id",idd);
//        alert(formdata);
        var request = new XMLHttpRequest();
        request.onreadystatechange = function () {
            if (request.readyState === 4) {
                if (request.status === 200) {
                    document.getElementById("fileNamemodal").innerHTML = "FileName";
                    document.getElementById("fileNameproperty").innerHTML = "FileName";
                    document.getElementById("DownModal").style.display = "none";
                    var responce = request.responseText;
                    alert(responce);
                }
            }

        };
        request.open("POST", "../../SubmitRelease", false);
//        request.send(formdata + "&property=" + property + "&modal="+ modal);
        request.send("property=" + property + "&modal="+ modal);
//        request.send();
        location.reload();
    }




}

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
    tosubmit = document.querySelectorAll('.selection-img');
    accepted = document.querySelectorAll('.selection-accepted');
    notaccepted = document.querySelectorAll('.selection-rejected');
    detailsimg = document.querySelector('.detailsimg');
//                                    detailsimg.src = "../../Resources/Img/profile/l1.jpg";
    document.getElementById("r1").checked = true;
    document.getElementById("review1").style.transform = "scale(1.1)";
    document.getElementById("review1").style.border = "5px solid  #415daa";
    document.getElementById("rejected1").style.transform = "scale(1.1)";
    document.getElementById("rejected1").style.border = "5px solid  #ff6969";
    document.getElementById("accept1").style.transform = "scale(1.1)";
    document.getElementById("accept1").style.border = "5px solid  #3eb80e";

    tosubmit.forEach(function (tosubmit) {
        tosubmit.addEventListener('click', function (event) {
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

    notaccepted.forEach(function (notaccepted) {
        notaccepted.addEventListener('click', function (event) {
//            detailsimg.src = event.target.src;
            deleterejected.setAttribute("srcpathrejected", event.target.src);
            deleterejected.setAttribute("photo-id-notaccepted", event.target.getAttribute("photo-id-notaccepted"));
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
            document.getElementById("fileNamemodal").innerHTML = "FileName"
            document.getElementById("fileNameproperty").innerHTML = "FileName"
            document.getElementById("upmodalproperty").value = "";
            document.getElementById("upmodalmodal").value = "";
        } else if (event.target == closemodal) { //modal close window onclick for upload button
            closemodal.style.display = "none";
            document.getElementById("uploadimage").innerHTML = "Choose file";
            document.getElementById("upimage").value = '';
        }
    }


};

function submitphoto() {

    var check = document.getElementById("upimage").value;
    if (check == "") {
        alert("Select an Image to upload");
        document.getElementById("upload-modal").style.display = "block";
        document.getElementById('uploadimage').innerHTML = "FileName";
        document.getElementById('upimage').value = "";
    } else {
        var file = document.getElementById("upimage").files[0];
        var formdata = new FormData();
        formdata.append("file1", file);
        var request = new XMLHttpRequest();
        request.onreadystatechange = function () {
            if (request.readyState === 4) {
                if (request.status === 200) {
                    var uploadmodal = document.getElementById("upload-modal");
                    uploadmodal.style.display = "none";
                    document.getElementById("uploadimage").innerHTML = "Choose file";
                    var responce = request.responseText;
                    location.reload();
                    alert(responce);
                }
            }

        };
        request.open("POST", "../../UploadforSales", false);
        request.send(formdata);

    }

}

function cleardata() {
    document.getElementById("upimage").value = '';
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
        } else if (para == "deleterejected") {
            var path = document.getElementById("deleterejected").getAttribute("srcpathrejected");
            var idd = document.getElementById("deleterejected").getAttribute("photo-id-notaccepted");
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

function closebtn() {
    document.getElementById('DownModal').style.display = 'none';
    document.getElementById('fileNameproperty').innerHTML = "FileName";
    document.getElementById('upmodalproperty').value = "";
    document.getElementById('fileNamemodal').innerHTML = "FileName";
    document.getElementById('upmodalmodal').value = "";
}

function validation(para) {

    if (para == "upmodalproperty") {
        var fileInput = document.getElementById('upmodalproperty');
        var filePath = fileInput.value;
        var allowedExtensions = /(\.pdf)$/i;
        if (!allowedExtensions.exec(filePath)) {
            alert("Upload Release in PDF format");
            document.getElementById("fileNameproperty").innerHTML = "FileName";
            document.getElementById("upmodalproperty").value = "";
            return false;
        }
    } else if (para == "upmodalmodal") {
        var fileInput = document.getElementById('upmodalmodal');
        var filePath = fileInput.value;
        var allowedExtensions = /(\.pdf)$/i;

        if (!allowedExtensions.exec(filePath)) {
            alert("Upload Release in PDF format");
            document.getElementById("fileNamemodal").innerHTML = "FileName";
            document.getElementById("upmodalmodal").value = "";
            return false;
        }
    } else if (para == "upimage") {
        var fileInput = document.getElementById('upimage');
        var filePath = fileInput.value;
        var allowedExtensions = /(\.jpg|\.jpeg)$/i;

        if (!allowedExtensions.exec(filePath)) {
            alert("Upload JPEG / JPG format only");
            document.getElementById("uploadimage").innerHTML = "FileName";
            document.getElementById("upimage").value = "";
            return false;
        }
    }

    var fileuplaod = document.getElementById('upimage');
    var filePath = fileuplaod.value;
    var filesize = fileuplaod.files[0].size;
    var lowersizelimit = 5000000; // lowest size to upload

    if (filesize < lowersizelimit) {
        alert('Image is less then 5MP, Upload a Quality one');
        document.getElementById("uploadimage").innerHTML = "FileName";
        document.getElementById("upimage").value = "";
        return false;
    }


}

function resetrelease() {
    document.getElementById('fileNameproperty').innerHTML = "FileName";
    document.getElementById('upmodalproperty').value = "";
    document.getElementById('fileNamemodal').innerHTML = "FileName";
    document.getElementById('upmodalmodal').value = "";
}

function submitforreview() {

    var title = document.getElementById("title-area").value;
    var category = document.getElementById("category").value;
    var keyword = document.getElementById("keyword-area").value;
    var Splitkey = keyword.split(',');
    var price = document.getElementById("price").value;
    var flag = 0;
    var alertmsg = "";
    var formdata = new FormData();

    if (title.length > 101) {
        flag = 1;
        alertmsg += "Title Should be less than 100 Characters\n\n";
        document.getElementById("title-area").value = "";
    }
    if (document.getElementById("category").value == "") {
        flag = 1;
        alertmsg += "Select a Category\n\n";
    }
    if (Splitkey.length > 51) {
        flag = 1;
        alertmsg += "You can add Maximum 50 Keywords only\n\n";
        document.getElementById("keyword-area").value = "";
    }
    if (price == "") {
        flag = 1;
        alertmsg += "Add Price for your Image !\n\n";
    }
    if (flag == 1) {
        alert(alertmsg);
        return false;
    } else {
        formdata.append("detail1", title);
        formdata.append("detail2", category);
        formdata.append("detail3", keyword);
        formdata.append("detail4", price);
    }

    var request = new XMLHttpRequest();
    request.onreadystatechange = function () {
        if (request.readyState === 4) {
            if (request.status === 200) {
//                document.getElementById('upload-modal').style.display = 'none';
                var responce = request.responseText;
                alert(responce);
            }
        }

    };
    request.open("POST", "../../SubmitforReview", false);
    request.send(formdata);
    location.reload();
}
