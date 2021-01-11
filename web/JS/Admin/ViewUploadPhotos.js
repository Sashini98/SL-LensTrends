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
                document.getElementById("quality").value = details[8];
                document.getElementById("gen").value = details[9];
                document.getElementById("img").src = details[10];               
                document.getElementById("reso").value = details[11];
                document.getElementById("pid").value = details[12];
                


            }
        }

    };

    request.open("POST", "../../ViewUploadedPhotoDetails", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("id="+id );
}

function PhotoApprove(){
    alert("start");
    var photo_id = document.getElementById("pid").value;
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                clearFieldsofDeactivateUsers();
            }
        }

    };

    request.open("POST", "../../ApprovePhoto", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("id=" + Photo_id);
    alert("end");
}