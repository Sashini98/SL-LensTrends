function viewMessages()
{
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
       
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var msg = JSON.parse(responce);
                
                  for (var i = 0; i < (msg.length); i++) {
                        var tr = document.createElement("tr");
                        var td11 = document.createElement("td");
                        var td12 = document.createElement("td");
                        var td13 = document.createElement("td");
                        var td14 = document.createElement("td");
                        var td15 = document.createElement("td");
                        var td16 = document.createElement("td");

                        var button = document.createElement("button");
                        button.innerHTML = "Reply";
                        button.style.backgroundColor = "#335fa6";
                        button.className = "btn1";
                        button.id = msg[i];

                        td11.innerHTML = msg[i];
                        td12.innerHTML = msg[(i) + 1];
                        td13.innerHTML = msg[(i) + 2];
                        td14.innerHTML = msg[(i) + 3];
                        td15.innerHTML = msg[(i) + 4];


                        td16.appendChild(button);

                        tr.appendChild(td11);
                        tr.appendChild(td12);
                        tr.appendChild(td13);
                        tr.appendChild(td14);
                        tr.appendChild(td15);
                        tr.appendChild(td16);

                        document.getElementById("messageTableBody").appendChild(tr);

                        setActionToBtn(button.id);
                    }


            }
        }

    };

    request.open("POST", "../../ViewMessages", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();

}


