function viewPhotos(){
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;

                document.getElementById("p").innerHTML = responce;


            }
        }
        };

    request.open("POST", "../../ViewUploadedPhotos", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}


