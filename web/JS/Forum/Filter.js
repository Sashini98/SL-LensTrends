/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function  filter() {
    
   
    var sortBy;    
    var filterBy;
    var keyword= document.getElementById("keyword").value;
    

    if (document.getElementById('NoAnsw').checked) {
        filterBy = 'NoAnswer';
    }

     if (document.getElementById('100plus').checked) {
        filterBy = '100plus';
    }
    
     if (document.getElementById('newest').checked) {
        sortBy = 'newest';
    }
    
    if (document.getElementById('oldest').checked) {
        sortBy = 'oldest';
    }
    
    if (document.getElementById('count').checked) {
        sortBy = 'count';
    }
    
   

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                parent.document.getElementById("row").innerHTML = responce;

            }
        }
    };

    var param = "keyword="+ keyword + "&sortBy=" + sortBy + "&filterBy=" + filterBy;

    request.open("POST", "../../Forum_filter", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);

}
