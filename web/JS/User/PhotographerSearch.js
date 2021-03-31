function  PhotographerKeywordSearch(event, x) {

    if (event.which == 13 || event.which == 1) {
        if (x === 1) {
            Search();

        } else if (x === 2) {
            Search2();
        }
    }
}

function Search() {
    var iframeObj = document.getElementById("selectors");
    var serchedFor = document.getElementById("keywordSearch").value;


    var photographerCategory = iframeObj.contentWindow.document.getElementById('PhotographerCategory').value;
    var photographerCity = iframeObj.contentWindow.document.getElementById('photographerCity').value;
    var photographerProvinceObj = iframeObj.contentWindow.document.getElementById('photographerProvince');
    var photographerProvince = photographerProvinceObj.options[photographerProvinceObj.selectedIndex].text;
    var gender;


    if (iframeObj.contentWindow.document.getElementById('Male').checked) {
        gender = 'Male';
    } else if (iframeObj.contentWindow.document.getElementById('Female').checked) {
        gender = 'Female';
    } else {
        gender = 'notSelected';
    }

    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {
        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                document.getElementById("row").innerHTML = responce;

            }
        }
    };

    var param = "keyword=" + serchedFor + "&photographerCategory=" + photographerCategory + "&photographerCity=" + photographerCity +
            "&photographerProvince=" + photographerProvince + "&gender=" + gender;

    request.open("POST", "../../PhotographerSearch", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);
}


function Search2() {

    var serchedFor = parent.document.getElementById("keywordSearch").value;


    var photographerCategory = document.getElementById('PhotographerCategory').value;
    var photographerCity = document.getElementById('photographerCity').value;
    var photographerProvinceObj = document.getElementById('photographerProvince');
    var photographerProvince = photographerProvinceObj.options[photographerProvinceObj.selectedIndex].text;

    var gender;
    if (document.getElementById('Male').checked) {
        gender = 'Male';
    } else if (document.getElementById('Female').checked) {
        gender = 'Female';
    } else {
        gender = 'Both';
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

    var param = "keyword=" + serchedFor + "&photographerCategory=" + photographerCategory + "&photographerCity=" + photographerCity +
            "&photographerProvince=" + photographerProvince + "&gender=" + gender;

    request.open("POST", "../../PhotographerSearch", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);
}

function checkSubCategory(action) {
    var subCategory = document.getElementById("Both");
    var subCategory1 = document.getElementById("Male");
    var subCategory2 = document.getElementById("Female");

    if (action === 'Both') {
        document.getElementById("Male").checked = false;
        document.getElementById("Female").checked = false;
    }
    if (action === 'Male' || action === 'Female') {
        document.getElementById("Both").checked = false;
    }

    if (subCategory1.checked && subCategory2.checked) {

        document.getElementById("Both").checked = true;
        document.getElementById("Male").checked = false;
        document.getElementById("Female").checked = false;
    }
}



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

//    document.body.onkeyup = function (e) {
//    var reply_click = function()
//{
//     C_value = document.getElementById('pname').value; 
//            document.getElementById("cat").value = document.getElementById('cat').value+","+C_value;
//            document.getElementById('pname').value = '';
//} 
//       document.getElementById('add').onclick = reply_click;
//        
//    }
}


function autocomplete(inp, arr) {

    /*the autocomplete function takes two arguments,
     the text field element and an array of possible autocompleted values:*/
    var currentFocus;
    /*execute a function when someone writes in the text field:*/
    inp.addEventListener("input", function (e) {
        var a, b, i, val = this.value;

        /*close any already open lists of autocompleted values*/
        closeAllLists();
        if (!val) {
            return false;
        }
        currentFocus = -1;
        /*create a DIV element that will contain the items (values):*/
        a = document.createElement("DIV");
        a.setAttribute("id", this.id + "autocomplete-list");
        a.setAttribute("class", "autocomplete-items");
        /*append the DIV element as a child of the autocomplete container:*/
        this.parentNode.appendChild(a);
        /*for each item in the array...*/
        for (i = 0; i < arr.length; i++) {
            /*check if the item starts with the same letters as the text field value:*/

            if (arr[i].toUpperCase().includes(val.toUpperCase())) {

                /*create a DIV element for each matching element:*/
                b = document.createElement("DIV");
                /*make the matching letters bold:*/

                b.innerHTML += arr[i];
                /*insert a input field that will hold the current array item's value:*/
                b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                /*execute a function when someone clicks on the item value (DIV element):*/
                b.addEventListener("click", function (e) {
                    /*insert the value for the autocomplete text field:*/
                    inp.value = this.getElementsByTagName("input")[0].value;
                    /*close the list of autocompleted values,
                     (or any other open lists of autocompleted values:*/
                    closeAllLists();
                    

                });

                a.appendChild(b);
            }
        }
    });
    /*execute a function presses a key on the keyboard:*/
    inp.addEventListener("keydown", function (e) {
        var x = document.getElementById(this.id + "autocomplete-list");
        if (x)
            x = x.getElementsByTagName("div");
        if (e.keyCode == 40) {
            /*If the arrow DOWN key is pressed,
             increase the currentFocus variable:*/
            currentFocus++;
            /*and and make the current item more visible:*/
            addActive(x);
        } else if (e.keyCode == 38) { //up
            /*If the arrow UP key is pressed,
             decrease the currentFocus variable:*/
            currentFocus--;
            /*and and make the current item more visible:*/
            addActive(x);
        } else if (e.keyCode == 13) {
            /*If the ENTER key is pressed, prevent the form from being submitted,*/
            e.preventDefault();
            if (currentFocus > -1) {
                /*and simulate a click on the "active" item:*/
                if (x)
                    x[currentFocus].click();
            }
        }
    });
    function addActive(x) {
        /*a function to classify an item as "active":*/
        if (!x)
            return false;
        /*start by removing the "active" class on all items:*/
        removeActive(x);
        if (currentFocus >= x.length)
            currentFocus = 0;
        if (currentFocus < 0)
            currentFocus = (x.length - 1);
        /*add class "autocomplete-active":*/
        x[currentFocus].classList.add("autocomplete-active");
    }
    function removeActive(x) {
        /*a function to remove the "active" class from all autocomplete items:*/
        for (var i = 0; i < x.length; i++) {
            x[i].classList.remove("autocomplete-active");
        }
    }
    function closeAllLists(elmnt) {
        /*close all autocomplete lists in the document,
         except the one passed as an argument:*/
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
}


var kWords = []

function loadWord() {

    autocomplete(document.getElementById("keywordSearch"), kWords);
}



function  getkWords() {
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.readyState === 4) {
            if (request.status === 200) {
                var response = request.responseText;
                var jsonString = JSON.parse(response);

                kWords = jsonString;

            }
        }


    };


    request.open("POST", "../../photographerNameSuggest", true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();

}



function  getkWords() {
    var request = new XMLHttpRequest();

    request.onreadystatechange = function () {

        if (request.status === 200) {
            if (request.readyState === 4) {

                var responce = request.responseText;
                pname = JSON.parse(responce);


            }
        }

    };

    request.open("POST", "../../photographerNameSuggest", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();
}



