/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function a1()
{
    var quesid = document.getElementById("qid").value;
    alert(quesid);
    var request = new XMLHttpRequest();

//    request.onreadystatechange = function () {      
//        if (request.status === 200) {
//             alert("b");
//            if (request.readyState === 4) {
//                 alert("c");
//                var responce = request.responseText;
//                alert(responce);
//                document.getElementById("ans").innerHTML = responce;                
//            }
//        }
//
//    };

    request.open("POST", "../../Answer_display", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("qid=" + quesid);

}
