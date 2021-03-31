/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function getPhotographer(id) {
    var request = new XMLHttpRequest();
    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {
                var responce = request.responseText;
                var arr = JSON.parse(responce);
                document.getElementById("username").innerHTML = arr[0];
                document.getElementById("address").innerHTML = arr[1];
                document.getElementById("web").innerHTML = arr[2];
                document.getElementById("bio").innerHTML = arr[3];
                document.getElementById("color").innerHTML = arr[4];
                var cat = arr[5];
                document.getElementById("car").innerHTML = arr[5];
            }
        }
    };
    request.open("POST", "../../UserViewPhotographer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("id=" + id);
}


function rate(a, b)
{

    var id = a;
    var rate = b;


    var request = new XMLHttpRequest();


    request.onreadystatechange = function () {
        if (request.status === 200) {

            if (request.readyState === 4) {

                var responce = request.responseText;
                var array = JSON.parse(responce);

                var message = array[2];
                if (message == "Liked")
                {
                    window.alert("You have already liked this photographer!");
                } else if (message == "Disliked")
                {
                    window.alert("You have already disliked this photographer!");
                } else
                {
                    document.getElementById("up").innerHTML = array[0];
                    document.getElementById("down").innerHTML = array[1];
                }



            }
        }

    };

    var param = "pid=" + id + "&rate=" + rate;


    request.open("POST", "../../RatePhotographer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);



}


function getPhotographerImages(id) {

    var request = new XMLHttpRequest();


    request.onreadystatechange = function () {
        if (request.status === 200) {

            if (request.readyState === 4) {

                var responce = request.responseText;




            }
        }

    };

    var param = "pid=" + id ;


    request.open("POST", "../../getPhotographerImages", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);
}