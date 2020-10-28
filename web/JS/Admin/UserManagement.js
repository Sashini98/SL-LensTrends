/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var user = JSON.parse(responce);

                for (var i = 0; i < (user.length / 3); i++) {
                    var tr = document.createElement("tr");
                    var td11 = document.createElement("td");
                    var td12 = document.createElement("td");
                    var td13 = document.createElement("td");
                    var td14 = document.createElement("td");

                    var button = document.createElement("button");
                    button.innerHTML = "View";
                    button.style.backgroundColor = "blueviolet";
                    button.className = "confirmBTN";
                    button.id = user[i];
                    button.addEventListener("click", viewDeactivateUser(user[i]));


                    td11.innerHTML = user[i];
                    td12.innerHTML = user[i + 1];
                    td13.innerHTML = user[i + 2];


                    td14.appendChild(button);

                    tr.appendChild(td11);
                    tr.appendChild(td12);
                    tr.appendChild(td13);
                    tr.appendChild(td14);

                    document.getElementById("reportedUserTableBody").appendChild(tr);

                    i = i + 2;

                }

            }
        }

    };

    request.open("POST", "../../UserMgt", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("search=" + search);

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
                document.getElementById("gender").value = user.genderId;

            }
        }
    }
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
                
                document.getElementById("deactivateUser").value = " ";
                document.getElementById("reportedUserTableBody").innerHTML = " ";
                document.getElementById("userid").value = " ";
                document.getElementById("email").value = " ";
                document.getElementById("fname").value = " ";
                document.getElementById("lname").value = " ";
                document.getElementById("addno").value = " ";
                document.getElementById("city").value = " ";
                document.getElementById("province").value = " ";
                document.getElementById("gender").value = " ";
                
 
            }
        }

    }

    request.open("POST", "../../DeactivateUser", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("deactivate=" + user_id);
}
