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

                for(var i=0; i< user.length/3; i++){
                    var tr = document.createElement("tr");
                    var td11 = document.createElement("td");
                    var td12 = document.createElement("td");
                    var td13 = document.createElement("td");
                    
                    td11.innerHTML = user[i].id;
                    td12.innerHTML = user[i].name;
                    td13.innerHTML = user[i].type;
                    
                    tr.appendChild(td11);
                    tr.appendChild(td12);
                    tr.appendChild(td13);
                    
                    t.appendChild(tr);
                    
                    
                }

                


            }
        }

    };




    request.open("POST", "../../UserMgt", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("search=" + search);

}




