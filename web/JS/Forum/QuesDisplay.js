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


