// Get the modal

function view(a)
{
    var request = new XMLHttpRequest();
    var id = a;

    request.onreadystatechange = function () {
        if (request.status === 200) {
            alert("b");
            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("s").innerHTML = responce;
                alert(responce);


            }
        }

    };

    var param = "qid=" + id;

    
    request.open("POST", "../../AnswerDisplay", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);


}


