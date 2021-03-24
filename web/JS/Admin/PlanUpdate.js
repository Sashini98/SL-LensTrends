function viewEdit(id) {

    var request = new XMLHttpRequest();
    
    request.onreadystatechange = function () {
        document.getElementById("myModal").style.display = "block";
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var details = JSON.parse(responce);

                document.getElementById("name").value = details[0];
                document.getElementById("price").value = details[1];
                document.getElementById("time").value = details[2];
                
            }
        }

    };

    request.open("POST", "/GroupProject/ViewSubPlanDetails", false);
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

function UpdateField(id) {

    var name = document.getElementById("name").value;
    var time = document.getElementById("time").value;
    var price = document.getElementById("price").value;
    
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);

            }
        }

    };
    
    var param = "name="+ name +"&time=" + time +"&price=" + price +"&id=" + id;

    request.open("POST", "../../SubPlanUpdate", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);

}
