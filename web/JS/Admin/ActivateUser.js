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

                        var button1 = document.createElement("button");
                        button1.innerHTML = "View";
                        button1.style.backgroundColor = "blueviolet";
                        button1.className = "btn1";
                        button1.uid = user[j * 3];

                        td1.innerHTML = user[j * 3];
                        td2.innerHTML = user[(j * 3) + 1];
                        td3.innerHTML = user[(j * 3) + 2];


                        td4.appendChild(button1);

                        tr.appendChild(td1);
                        tr.appendChild(td2);
                        tr.appendChild(td3);
                        tr.appendChild(td4);

                        document.getElementById("activateUserTableBody").appendChild(tr);

                        setActionToBtn(button1.uid);
                    }
                }
            }
        }

    };

    request.open("POST", "../../ActivateUserMgt", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("searchbox=" + searchbox);

}

function setActionToBtn(uid) {
    document.getElementById(uid).setAttribute('onclick', 'viewActivateUser(uid)');
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
    request.open("POST", "../../ViewActivateUser", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("userEmail=" + user_email);
}

function viewActivate() {

    var user_email = document.getElementById("userEmail").value;

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

    request.open("POST", "../../ActivateUser", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("activate=" + user_email);
}


function clearFieldsofActivateUsers() {
    document.getElementById("activateUser").value = "";
    document.getElementById("activateUserTableBody").innerHTML = "";
    document.getElementById("userid").value = "";
    document.getElementById("email").value = "";
    document.getElementById("fname").value = "";
    document.getElementById("lname").value = "";
    document.getElementById("addno").value = "";
    document.getElementById("city").value = "";
    document.getElementById("province").value = "";
    document.getElementById("gender").value = "";
}



