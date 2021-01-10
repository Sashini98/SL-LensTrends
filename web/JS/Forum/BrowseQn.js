// Get the modal

function view()
{
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {



                var responce = request.responseText;
                document.getElementById("s").innerHTML = responce;


            }
        }

    };




    request.open("POST", "../../forumH", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();

}
