function view(logged) {

    var request = new XMLHttpRequest();
    request.onreadystatechange = function () {
        if (request.status == 200) {
            if (request.readyState == 4) {
                var responce = request.responseText;
                
            }
        }
    };

    request.open("POST", "../../LoadNotifications", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("logged=" + logged);

}