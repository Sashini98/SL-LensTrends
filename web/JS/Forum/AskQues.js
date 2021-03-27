/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function autocomplete(inp, arr) {

    var currentFocus;


    inp.addEventListener("input", function (e) {
        var a, b, i, val = this.value;

        closeAllLists();
        if (!val) {
            return false;
        }
        currentFocus = -1;

        a = document.createElement("DIV");
        a.setAttribute("id", this.id + "autocomplete-list");
        a.setAttribute("class", "autocomplete-items");

        this.parentNode.appendChild(a);

        for (i = 0; i < arr.length; i++) {

            if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {

                b = document.createElement("DIV");

                b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                b.innerHTML += arr[i].substr(val.length);

                b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";

                b.addEventListener("click", function (e) {

                    inp.value = this.getElementsByTagName("input")[0].value;

                    closeAllLists();
                });
                a.appendChild(b);
            }
        }
    });

    inp.addEventListener("keydown", function (e) {
        var x = document.getElementById(this.id + "autocomplete-list");
        if (x)
            x = x.getElementsByTagName("div");
        if (e.keyCode == 40) {

            currentFocus++;

            addActive(x);
        } else if (e.keyCode == 38) { //up

            currentFocus--;

            addActive(x);
        } else if (e.keyCode == 13) {

            e.preventDefault();
            if (currentFocus > -1) {

                if (x)
                    x[currentFocus].click();
            }
        }
    });
    function addActive(x) {

        if (!x)
            return false;

        removeActive(x);
        if (currentFocus >= x.length)
            currentFocus = 0;
        if (currentFocus < 0)
            currentFocus = (x.length - 1);

        x[currentFocus].classList.add("autocomplete-active");
    }
    function removeActive(x) {

        for (var i = 0; i < x.length; i++) {
            x[i].classList.remove("autocomplete-active");
        }
    }
    function closeAllLists(elmnt) {

        var x = document.getElementsByClassName("autocomplete-items");
        for (var i = 0; i < x.length; i++) {
            if (elmnt != x[i] && elmnt != inp) {
                x[i].parentNode.removeChild(x[i]);
            }
        }
    }

    document.addEventListener("click", function (e) {
        closeAllLists(e.target);
    });

    document.body.onkeyup = function (e) {
       
        if (e.keyCode == 32 || e.keyCode == 13 ) {
            C_value = document.getElementById('myInput').value; 
            document.getElementById("cat").value = document.getElementById('cat').value+","+C_value;
            document.getElementById('myInput').value = '';
        }
    }
}


var categories;


var request = new XMLHttpRequest();

request.onreadystatechange = function () {

    if (request.status === 200) {
        if (request.readyState === 4) {

            var responce = request.responseText;
            categories = JSON.parse(responce);
            ;

        }
    }

};

request.open("POST", "../../category_suggest", false);
request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
request.send();

autocomplete(document.getElementById("myInput"), categories);




function trimfield(str)
{
    return str.replace(/^\s+|\s+$/g, '');
}

function validateForm() {
    var title = document.forms["askQ"]["title"].value;
    if (title == "" || title == null) {
        alert("Title must be filled out");
        return false;
    }
    
    
//    var title = document.getElementById("title").value;
//    var question= document.getElementById("Questionbody").innerHTML;
//    var categ = document.getElementById("cat").innerHTML;
//    var request = new XMLHttpRequest();
//    
//
////    request.onreadystatechange = function () {      
////        if (request.status === 200) {
////             alert("b");
////            if (request.readyState === 4) {
////                 alert("c");
////                var responce = request.responseText;
////                alert(responce);
////                document.getElementById("ans").innerHTML = responce;                
////            }
////        }
////
////    };
//
//    request.open("POST", "../../AskQues", false);
//    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//    request.send("cat=" + categ+"&title="+title+"&question"+question);
    
    
    

//    var bd = document.getElementById("Questionbody");
//
//    if (trimfield(bd.value) == '') {
//        alert("Question must be filled out");
//        return false;
//    }
//
//
//function DropDownChanged(oDDL) {
//    var oTextbox = oDDL.form.elements["c_txt"];
//    if (oTextbox) {
//        oTextbox.style.display = (oDDL.value == "") ? "" : "none";
//        if (oDDL.value == "") {
//            oTextbox.focus();
//        }
//    }
//}
//
//function FormSubmit(oForm) {
//    var oHidden = oForm.elements["category"];
//    var oDDL = oForm.elements["categ"];
//    var oTextbox = oForm.elements["c_txt"];
//    if (oHidden && oDDL && oTextbox)
//        oHidden.value = (oDDL.value == "") ? oTextbox.value : oDDL.value;
//}

}

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        txtValue = a[i].textContent || a[i].innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}

function myFunction1() {
    document.getElementById("myDropdown1").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    div = document.getElementById("myDropdown1");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        txtValue = a[i].textContent || a[i].innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}

function myFunction2() {
    document.getElementById("myDropdown2").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    div = document.getElementById("myDropdown2");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        txtValue = a[i].textContent || a[i].innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}
