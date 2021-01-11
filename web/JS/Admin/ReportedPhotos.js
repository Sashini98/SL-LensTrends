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

function ViewDetails(id){
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
                document.getElementById("reason").value = details[13];
                document.getElementById("desk").value = details[14];
                
                
        }
        }

    };

    request.open("POST", "../../ViewReportedPhotoDetails", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("id="+id );
}
