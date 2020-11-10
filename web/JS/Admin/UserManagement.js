var modal = document.getElementById("myModal");

var btn = document.getElementById("vie");

var span = document.getElementsByClassName("close")[0];

btn.onclick = function () {
    modal.style.display = "block";
}
span.onclick = function () {
    modal.style.display = "none";
}
window.onclick = function (event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function viewResults() {

    var search = document.getElementById("deactivateUser").value;
    var request = new XMLHttpRequest();

    document.getElementById("reportedUserTableBody").innerHTML = "";
    document.getElementById("userid").value = "";
    document.getElementById("email").value = "";
    document.getElementById("fname").value = "";
    document.getElementById("lname").value = "";
    document.getElementById("addno").value = "";
    document.getElementById("city").value = "";
    document.getElementById("province").value = "";
    document.getElementById("gender").value = "";

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var user = JSON.parse(responce);

                if (user[0] === "error") {
                    document.getElementById("deacError").style.display = "block";
                } else {
                    document.getElementById("deacError").style.display = "none";
                    for (var i = 0; i < (user.length / 3); i++) {
                        var tr = document.createElement("tr");
                        var td11 = document.createElement("td");
                        var td12 = document.createElement("td");
                        var td13 = document.createElement("td");
                        var td14 = document.createElement("td");

                        var button = document.createElement("button");
                        button.innerHTML = "View";
                        button.style.backgroundColor = "blueviolet";
                        button.className = "btn";
                        button.id = user[i * 3];

                        td11.innerHTML = user[i * 3];
                        td12.innerHTML = user[(i * 3) + 1];
                        td13.innerHTML = user[(i * 3) + 2];


                        td14.appendChild(button);

                        tr.appendChild(td11);
                        tr.appendChild(td12);
                        tr.appendChild(td13);
                        tr.appendChild(td14);

                        document.getElementById("reportedUserTableBody").appendChild(tr);

                        setActionToBtn(button.id);
                    }
                }
            }
        }

    };

    request.open("POST", "../../UserMgt", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("search=" + search);

}

function setActionToBtn(id) {
    document.getElementById(id).setAttribute('onclick', 'viewDeactivateUser(id)');
}

function viewDeactivateUser(user_id) {

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var user = JSON.parse(responce);
                if (user.clientId != null) {
                    document.getElementById("userid").value = user.clientId;
                } else {
                    document.getElementById("userid").value = user.photographerId;
                }
                document.getElementById("email").value = user.email;
                document.getElementById("fname").value = user.fname;
                document.getElementById("lname").value = user.lname;
                document.getElementById("addno").value = user.address_no;
                document.getElementById("city").value = user.city;
                document.getElementById("province").value = user.province;
                var gender;
                if (user.genderId === 1) {
                    gender = "Male"
                } else {
                    gender = "Female"
                }
                document.getElementById("gender").value = gender;

            }
        }
    };
    request.open("POST", "../../ViewDeactivateUser", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("userid=" + user_id);
}

function viewDeactivate() {

    var user_id = document.getElementById("userid").value;

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

    request.open("POST", "../../DeactivateUser", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("deactivate=" + user_id);
}


function clearFieldsofDeactivateUsers() {
    document.getElementById("deactivateUser").value = "";
    document.getElementById("reportedUserTableBody").innerHTML = "";
    document.getElementById("userid").value = "";
    document.getElementById("email").value = "";
    document.getElementById("fname").value = "";
    document.getElementById("lname").value = "";
    document.getElementById("addno").value = "";
    document.getElementById("city").value = "";
    document.getElementById("province").value = "";
    document.getElementById("gender").value = "";
}
