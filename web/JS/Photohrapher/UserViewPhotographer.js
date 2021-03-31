/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var id=document.getElementById("pid");
alert(id);

var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {



                var responce = request.responseText;
                document.getElementById("s").innerHTML = responce;


            }
        }

    };




    request.open("POST", "../../UserViewPhotographer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(id);
