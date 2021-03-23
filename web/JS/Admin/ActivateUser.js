function viewUser() {

    var searchbox = document.getElementById("activateUser").value;
    var request = new XMLHttpRequest();

    document.getElementById("activateUserTableBody").innerHTML = "";
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
                    document.getElementById("acError").style.display = "block";
                } else {
                    document.getElementById("acError").style.display = "none";
                    for (var j = 0; j < (user.length / 3); j++) {
                        var tr = document.createElement("tr");
                        var td1 = document.createElement("td");
                        var td2 = document.createElement("td");
                        var td3 = document.createElement("td");
                        var td4 = document.createElement("td");

                        var button = document.createElement("button");
                        button.innerHTML = "View";
                        button.style.backgroundColor = "blueviolet";
                        button.className = "btn1";
                        button.id = user[j * 3];

                        td1.innerHTML = user[j * 3];
                        td2.innerHTML = user[(j * 3) + 1];
                        td3.innerHTML = user[(j * 3) + 2];


                        td4.appendChild(button);

                        tr.appendChild(td1);
                        tr.appendChild(td2);
                        tr.appendChild(td3);
                        tr.appendChild(td4);

                        document.getElementById("activateUserTableBody").appendChild(tr);

                        setBtnAction(button.id);
                    }
                }
            }
        }

    };

    request.open("POST", "../../ActivateUserMgt", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("searchbox=" + searchbox);

}

function setBtnAction(id) {
    document.getElementById(id).setAttribute('onclick', 'viewActivateUser(id)');
}

function viewActivateUser(user_email) {

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var user = JSON.parse(responce);
                if (user.clientId != null) {
                    document.getElementById("uid").value = user.clientId;
                } else {
                    document.getElementById("uid").value = user.photographerId;
                }
                document.getElementById("uemail").value = user.email;
                document.getElementById("finame").value = user.fname;
                document.getElementById("laname").value = user.lname;
                document.getElementById("add").value = user.address_no;
                document.getElementById("cit").value = user.city;
                document.getElementById("pro").value = user.province;
                var gen;
                if (user.genderId === 1) {
                    gen = "Male"
                } else {
                    gen = "Female"
                }
                document.getElementById("gen").value = gen;

            }
        }
    };
    request.open("POST", "../../ViewActivateUser", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("userEmail=" + user_email);
}

function viewActivate() {

    var user_email = document.getElementById("uid").value;

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                clearFieldsofActivateUsers();
            }
        }

    };

    request.open("POST", "../../ActivateUser", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("activate=" + user_email);
}


function clearFieldsofActivateUsers() {
    document.getElementById("activateUser").value = "";
    document.getElementById("activateUserTableBody").innerHTML = "";
    document.getElementById("uid").value = "";
    document.getElementById("uemail").value = "";
    document.getElementById("finame").value = "";
    document.getElementById("laname").value = "";
    document.getElementById("add").value = "";
    document.getElementById("cit").value = "";
    document.getElementById("pro").value = "";
    document.getElementById("gen").value = "";
}

function viewReportedUser(){

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("reportedPhotographerTableBody").innerHTML = responce;


            }
        }

    };

    request.open("POST", "../../ViewReportedPhotographer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}

function viewCount(){

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("c").innerHTML = responce;


            }
        }

    };

    request.open("POST", "/GroupProject/GetUserCount", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}

