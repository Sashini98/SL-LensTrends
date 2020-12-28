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

