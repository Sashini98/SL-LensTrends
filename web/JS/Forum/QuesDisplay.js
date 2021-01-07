/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function popupanswer()
{
    var btn = document.getElementById("answer_view");

    var modal = document.getElementById("answer1");

    var span = document.getElementsByClassName("close_anwe")[0];





//function popupanswer(btnid) {
//
//    if (btnid == "myBtn1") {
//
//        var btn = document.getElementById("myBtn1");
//
//        var modal = document.getElementById("myModal1");
//
//        var span = document.getElementsByClassName("close1")[0];
//        
//        
//
//    } else if (btnid == "myBtn2") {
//        
//        var btn = document.getElementById("myBtn2");
//
//        var modal = document.getElementById("myModal2");
//
//        var span = document.getElementsByClassName("close2")[0];
//
//    } 
//     else if (btnid == "comm") {
//        
//        var btn = document.getElementById("comm");
//
//        var modal = document.getElementById("myModal3");
//
//        var span = document.getElementsByClassName("close3")[0];
//
//    } 
//    
//     else if (btnid == "report") {
//        
//        var btn = document.getElementById("report");
//
//        var modal = document.getElementById("myModal4");
//
//        var span = document.getElementsByClassName("close4")[0];
//
//    } 



// When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
    
    }

// When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }


}
