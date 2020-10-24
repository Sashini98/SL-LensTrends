/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



var modal = document.getElementById("answ");
var btn = document.getElementById("answerr");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

function reportItemClicked(id) {
    var color = document.getElementById(id).style.color;
    if (color === 'white') {
        document.getElementById(id).style.background = 'rgb(216, 218, 223)';
        document.getElementById(id).style.color = 'black';

    } else {
        document.getElementById(id).style.background = 'RGB(23,113,230)';
        document.getElementById(id).style.color = 'white';

    }
}




var modal1 = document.getElementById("comment");
var btn1 = document.getElementById("comme");
var span1 = document.getElementsByClassName("close")[0];
btn1.onclick = function() {
  modal1.style.display = "block";
}
span1.onclick = function() {
  modal1.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal1) {
    modal1.style.display = "none";
  }
}




//var modal2 = document.getElementById("report");
//var btn2 = document.getElementById("repo");
//var span2 = document.getElementsByClassName("close")[0];
//btn2.onclick = function() {
//  modal2.style.display = "block";
//}
//span2.onclick = function() {
//  modal2.style.display = "none";
//}
//window.onclick = function(event) {
//  if (event.target == modal2) {
//    modal2.style.display = "none";
//  }
//}

var modal3 = document.getElementById("report");

var btn3 = document.getElementById("repo");


var span3 = document.getElementsByClassName("close")[0];


btn3.onclick = function () {
    modal3.style.display = "block";
}


span3.onclick = function () {
    modal3.style.display = "none";
}

window.onclick = function (event) {
    if (event.target == modal3) {
        modal3.style.display = "none";
    }
}