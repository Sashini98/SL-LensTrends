function viewMessages()
{
    alert("hiiii");
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                document.getElementById("messageTableBody").innerHTML = responce;


            }
        }

    };

    request.open("POST", "../../ViewMessages", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
    alert("Hello");
}

function SendNotification(){
    
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                
            }
        }

    };

    request.open("POST", "../../SendNotifications", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}


