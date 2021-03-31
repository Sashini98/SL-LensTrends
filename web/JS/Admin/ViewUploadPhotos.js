function viewPhotoDetails(id)
{
var request = new XMLHttpRequest();
        request.onreadystatechange = function () {

        if (request.status === 200) {
        if (request.readyState === 4) {

        var responce = request.responseText;
                var details = JSON.parse(responce);
                document.getElementById("title").value = details[0];
                document.getElementById("height").value = details[1];
                document.getElementById("width").value = details[2];
                document.getElementById("key").value = details[3];
                document.getElementById("udate").value = details[4];
                document.getElementById("pname").value = details[5];
                document.getElementById("cate").value = details[6];
                document.getElementById("orientation").value = details[7];
                document.getElementById("gen").value = details[8];
                document.getElementById("img").src = details[9];
                document.getElementById("reso").value = details[10];
                document.getElementById("pid").value = details[11];
                document.getElementById("form").value = details[12];
             

        }


        };
                request.open("POST", "../../ViewUploadedPhotoDetails", false);
                request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                request.send("id=" + id);
        }
    }

function PhotoApprove(){

var photo_id = document.getElementById("pid").value;
        var request = new XMLHttpRequest();
        request.onreadystatechange = function () {
        if (request.status === 200) {
        if (request.readyState === 4) {

        var responce = request.responseText;
                alert(responce);
                clearFieldsofPhotoDetails();
        }
        }

        };
        request.open("POST", "../../ApprovePhoto", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("id=" + photo_id);
}

function PhotoReject() {

var id = document.getElementById("pid").value;
        var request = new XMLHttpRequest();
        request.onreadystatechange = function () {
        if (request.status === 200) {
        if (request.readyState === 4) {

        var responce = request.responseText;
                alert(responce);
                clearFieldsofPhotoDetails();
        }
        }

        };
        request.open("POST", "../../RejectPhoto", false);
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send("id=" + id);
}

function clearFieldsofPhotoDetails() {

document.getElementById("title").value = "";
        document.getElementById("height").value = "";
        document.getElementById("width").value = "";
        document.getElementById("key").value = "";
        document.getElementById("udate").value = "";
        document.getElementById("pname").value = "";
        document.getElementById("cate").value = "";
        document.getElementById("orientation").value = "";
        document.getElementById("quality").value = "";
        document.getElementById("gen").value = "";
        document.getElementById("img").src = "";
        document.getElementById("reso").value = "";
        document.getElementById("pid").value = "";
}

function viewimage(){
var largeImage = document.getElementById('img');
        img.style.display = 'block';
        img.style.width = 200 + "px";
        img.style.height = 200 + "px";
        var url = img.getAttribute('src');
        window.open(url, 'Image', 'width=largeImage.stylewidth,height=largeImage.style.height,resizable=1');
}