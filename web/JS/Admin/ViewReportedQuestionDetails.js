function ViewQusetionDetails(id){
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var details = JSON.parse(responce);
                
                document.getElementById("title").value = details[0];
                document.getElementById("question").value = details[1];
                document.getElementById("cate").value = details[2];
                document.getElementById("reported").value = details[3];
                document.getElementById("posted").value = details[4];
                document.getElementById("reason").value = details[5];
                document.getElementById("desc").value = details[6];
                document.getElementById("sdate").value = details[7];
                document.getElementById("qid").value = details[8];

            }
        }

    };

    request.open("POST", "../../ViewReportedQuesDetails", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("qid="+id );
    
}

function RemoveQue(){
    
     var que_id = document.getElementById("qid").value;
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                
            }
        }

    };

    request.open("POST", "../../RemoveQuestion", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("qid=" + que_id);
}

