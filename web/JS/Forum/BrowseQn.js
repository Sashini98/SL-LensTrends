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



function openForm(id) {
  document.getElementById("myForm").style.display = "block";
  document.getElementById("id").value=id;
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}