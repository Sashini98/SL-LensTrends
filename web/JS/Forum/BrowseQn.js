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

function  keywordSearch(event) {

    if (event.which == 13 || event.which == 1) {
        filter();

    }
}

function checkSubCategory(i, action) {
     if (i === '1') {
        var subCategory = document.getElementById("NoAnsw");
        var subCategory1 = document.getElementById("100plus");

        if (subCategory.checked) {
            if (action === 'NoAnswer') {
                subCategory.checked = true;
                document.getElementById("100plus").checked = false;


            } else {
                subCategory1.checked = true;
                document.getElementById("NoAnsw").checked = false;
            }
        }
    }
    
    if (i === '2') {
        var subCategory = document.getElementById("newest");
        var subCategory1 = document.getElementById("oldest");
         var subCategory2 = document.getElementById("count");

        if (action=='newest') {
                subCategory.checked = true;
                document.getElementById("oldest").checked = false;
                document.getElementById("count").checked = false;


            } else if (action=='oldest') {
                subCategory1.checked = true;
                document.getElementById("newest").checked = false;
                document.getElementById("count").checked = false;
            }
            
            else if (action=='count') {
                subCategory2.checked = true;
                document.getElementById("newest").checked = false;
                document.getElementById("oldest").checked = false;
            }
            
               }
}

function  filter() {

    var sortBy;
    var filterBy;
    var keyword = document.getElementById("keyword").value;


    if (document.getElementById('NoAnsw').checked) {
        filterBy = 'NoAnswer';
    }

    else if (document.getElementById('100plus').checked) {
        filterBy = '100plus';
    }
    
   else{
        filterBy = 'none';
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

                document.getElementById("s").innerHTML = responce;

            }
        }
    };

    var param = "keyword=" + keyword + "&sortBy=" + sortBy + "&filterBy=" + filterBy;

    request.open("POST", "../../Forum_filter", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);

}




//function answer()
//{
//    
//var request = new XMLHttpRequest();
//      
//    alert("hiii");
//    request.onreadystatechange = function () {
//        alert("2");
//
//        if (request.status === 200) {
//            alert("4");
//            if (request.readyState === 4) {
//                alert("5");
//
//                var responce = request.responseText;
//                alert(responce);
//                document.getElementById("ans").innerHTML = responce;
//
//
//            }
//        }
//
//    };
//    alert("1");
//    request.open("POST", "../../AnswerDisplay", false);
//    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//    request.send();
//    alert("3");
//    }



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