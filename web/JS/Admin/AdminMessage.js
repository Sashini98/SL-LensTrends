function viewMessages()
{
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("messageTableBody").innerHTML = responce;


            }
        }

    };

    request.open("POST", "../../ViewMessages", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}

function SendNotification() {

    var title = document.getElementById("title").value;
    var msg = document.getElementById("msgbody").value;

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                clearCnotify();

            }
        }

    };

    request.open("POST", "../../SendNotifications", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("title="+ title +"&msg=" + msg);
}

function SendPhotographerNotification() {

    var title = document.getElementById("ptitle").value;
    var msg = document.getElementById("pmsgbody").value;


    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                clearPnotify();

            }
        }

    };

    request.open("POST", "../../SendNotifications", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("title="+ title +"&msg=" + msg);
}

function SendSystemNotification() {

    var title = document.getElementById("stitle").value;
    var msg = document.getElementById("smsgbody").value;


    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                clearPnotify();

            }
        }

    };

    request.open("POST", "../../SendNotifications", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("title="+ title +"&msg=" + msg);
}

function clearCnotify(){
    
    document.getElementById("title").value = "";
    document.getElementById("msgbody").value = "";
}

function clearPnotify(){
    
    document.getElementById("ptitle").value = "";
    document.getElementById("pmsgbody").value = "";
}

function clearSnotify(){
    
    document.getElementById("stitle").value = "";
    document.getElementById("smsgbody").value = "";
}