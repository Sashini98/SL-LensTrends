/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var modal = document.getElementById("myModal");

var btn = document.getElementById("vie");

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

function viewResults() {

    var search = document.getElementById("searchBar").value;

    var request = new XMLHttpRequest();

   
    



    request.open("POST", "../../UserMgt", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("search=" + search);

}




