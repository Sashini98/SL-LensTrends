// Get the modal

function view(a)
{


    var request = new XMLHttpRequest();
    var id = a;

    request.onreadystatechange = function () {
        if (request.status === 200) {

            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("s").innerHTML = responce;



            }
        }

    };

    var param = "qid=" + id;


    request.open("POST", "/GroupProject/DisplayAnswer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);



}

function rate(a,b)
{
var id = a;
var rate=b;


    var request = new XMLHttpRequest();
    

    request.onreadystatechange = function () {
        if (request.status === 200) {

            if (request.readyState === 4) {

                var responce = request.responseText;
                var array=JSON.parse(responce);
                
                var message=array[2];
                if(message=="Liked")
                {
                    window.alert("You have already liked this message!");
                }
                
                else if(message=="Disliked")
                {
                     window.alert("You have already disliked this message!");
                }
                
                else
                {
                    document.getElementById("up").innerHTML=array[0];
                    document.getElementById("down").innerHTML=array[1];
                }



            }
        }

    };

    var param = "aid=" + id +"&rate=" +rate;


    request.open("POST", "/GroupProject/RateAnswer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);



}


