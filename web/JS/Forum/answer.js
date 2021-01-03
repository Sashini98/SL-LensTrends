/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var qid;

function quesId()
{
    qid=document.getElementById('qid').value;
}


function question()
{

alert(qid);
    var request = new XMLHttpRequest();
    

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                ques = JSON.parse(responce);
                alert(ques);
                document.getElementById("quest").innerHTML = ques;


            }
        }

    };

    request.open("POST", "../../display_question_inAnswer", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("qid=" + qid);
}
