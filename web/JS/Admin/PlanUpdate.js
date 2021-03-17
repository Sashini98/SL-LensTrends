function viewEdit(id) {

    var request = new XMLHttpRequest();
    
    request.onreadystatechange = function () {
        document.getElementById("myModal").style.display = "block";
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var details = JSON.parse(responce);
                
                document.getElementById("Pname").value = details[0];
                document.getElementById("Price").value = details[1];
                document.getElementById("Time").value = details[2];

            }
        }

    };

    request.open("POST", "../../", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("id=" + id);
}

function removeEdit() {
    document.getElementById("myModal").style.display = "none";
}

function viewPlan(){
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("s").innerHTML = responce;

            }
        }
        };

    request.open("POST", "../../ViewSubPlan", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}
