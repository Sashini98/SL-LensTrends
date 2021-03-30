function ViewQusetionDetails(id) {
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                var details = JSON.parse(responce);

                document.getElementById("title").innerHTML = details[0];
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
    request.send("qid=" + id);

}

function RemoveQue() {

    var que_id = document.getElementById("qid").value;
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                alert(responce);
                clearFieldsofQuestion();

            }
        }

    };

    request.open("POST", "../../RemoveReportedQuestion", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("qid=" + que_id);
}

function clearFieldsofQuestion() {

    document.getElementById("title").innerHTML = "";
    document.getElementById("question").value = "";
    document.getElementById("cate").value = "";
    document.getElementById("reported").value = "";
    document.getElementById("posted").value = "";
    document.getElementById("reason").value = "";
    document.getElementById("desc").value = "";
    document.getElementById("sdate").value = "";
    document.getElementById("qid").value = "";
}