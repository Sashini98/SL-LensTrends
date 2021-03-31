/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function getPhotographer(id)
{


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
//                  alert(cat);
//                var split = cat.split(",");
//                alert(split);




            }
        }

    };



    request.open("POST", "../../UserViewPhotographer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("id=" + id);
}


function rate()
{
    alert();
    
//var id = a;
//var rate=b;
//
//alert(id);
//alert(rate);
//
//    var request = new XMLHttpRequest();
//    
//
//    request.onreadystatechange = function () {
//        if (request.status === 200) {
//
//            if (request.readyState === 4) {
//
//                var responce = request.responseText;
//                var array=JSON.parse(responce);
//                
//                var message=array[2];
//                if(message=="Liked")
//                {
//                    window.alert("You have already liked this message!");
//                }
//                
//                else if(message=="Disliked")
//                {
//                     window.alert("You have already disliked this message!");
//                }
//                
//                else
//                {
//                    document.getElementById("up").innerHTML=array[0];
//                    document.getElementById("down").innerHTML=array[1];
//                }
//
//
//
//            }
//        }
//
//    };
//
//    var param = "aid=" + id +"&rate=" +rate;
//
//
//    request.open("POST", "/GroupProject/RateAnswer", false);
//    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//    request.send(param);
//


}