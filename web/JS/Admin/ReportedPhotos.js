function viewReportedPhotos() {
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("r").innerHTML = responce;


            }
        }
    };

    request.open("POST", "../../ViewReportedPhotographs", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}

function ViewDetails(id) {
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var details = JSON.parse(responce);

                document.getElementById("img").src = details[0];
                document.getElementById("reason").value = details[1];
                document.getElementById("desc").value = details[2];
                document.getElementById("title").value = details[3];
                document.getElementById("height").value = details[4];
                document.getElementById("width").value = details[5];
                document.getElementById("key").value = details[6];
                document.getElementById("udate").value = details[7];
                document.getElementById("pname").value = details[8];
                document.getElementById("cate").value = details[9];
                document.getElementById("reso").value = details[10];
                document.getElementById("pid").value = details[11];


            }
        }

    };

    request.open("POST", "../../ViewReportedPhotoDetails", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("pid=" + id);
}

function PhotoRemove() {

    var id = document.getElementById("pid").value;
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                clearFieldsofPhoto();

            }
        }

    };

    request.open("POST", "../../RemoveReportedPhotos", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("id=" + id);
}

function clearFieldsofPhoto() {

    document.getElementById("img").src = "";
    document.getElementById("reason").value = "";
    document.getElementById("desc").value = "";
    document.getElementById("title").value = "";
    document.getElementById("height").value = "";
    document.getElementById("width").value = "";
    document.getElementById("key").value = "";
    document.getElementById("udate").value = "";
    document.getElementById("pname").value = "";
    document.getElementById("cate").value = "";
    document.getElementById("reso").value = "";
    document.getElementById("pid").value = "";
}
function openimage() {
    var largeImage = document.getElementById('img');
    img.style.display = 'block';
    img.style.width = 200 + "px";
    img.style.height = 200 + "px";
    var url = img.getAttribute('src');
    window.open(url, 'Image', 'width=largeImage.stylewidth,height=largeImage.style.height,resizable=1');
}