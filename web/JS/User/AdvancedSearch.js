function checkSubCategory(i, action) {

    if (i === '1') {

        var subCategory = document.getElementById("Both");
        var subCategory1 = document.getElementById("Male");
        var subCategory2 = document.getElementById("Female");


        if (action === 'Male' || action === 'Female' || action === 'Both') {

            document.getElementById("WithPeople").checked = true;
            document.getElementById("WithoutPeople").checked = false;

        }

//        if (subCategory1.checked && subCategory2.checked) {
//            subCategory.checked = true;
//            subCategory1.checked = false;
//            subCategory2.checked = false;
//        }

//        if (!subCategory.checked && !subCategory1.checked && !subCategory2.checked) {
//            document.getElementById("WithPeople").checked = false;
//            document.getElementById("WithoutPeople").checked = true;
//        }

    } else if (i === '2') {

//        var subCategory = document.getElementById("AllOrientations");
//        var subCategory1 = document.getElementById("Horizontal");
//        var subCategory2 = document.getElementById("Vertical");
//        var subCategory3 = document.getElementById("Square");
//        var subCategory4 = document.getElementById("Panoramic");
//
//        if (subCategory.checked) {
//            subCategory1.checked = false;
//            subCategory2.checked = false;
//            subCategory3.checked = false;
//            subCategory4.checked = false;
//        }
//
//        if ((subCategory1.checked) && (subCategory2.checked) && (subCategory3.checked) && (subCategory4.checked)) {
//            subCategory.checked = true;
//            subCategory1.checked = false;
//            subCategory2.checked = false;
//            subCategory3.checked = false;
//            subCategory4.checked = false;
//        } else {
//            subCategory.checked = false;
//            document.getElementById(action).checked = true;
//        }
    } else if (i === '3') {
        var subCategory = document.getElementById("WithPeople");
        var subCategory1 = document.getElementById("WithoutPeople");

        if (subCategory.checked) {
            if (action === 'WithPeople') {
                subCategory.checked = true;
                subCategory1.checked = false;

                document.getElementById("Both").checked = false;
                document.getElementById("Male").checked = false;
                document.getElementById("Female").checked = false;

            } else {
                subCategory1.checked = true;
                subCategory.checked = false;

                document.getElementById("Both").checked = false;
                document.getElementById("Male").checked = false;
                document.getElementById("Female").checked = false;
            }
        }
    }
}



function  keywordSearch(event) {

    if (event.which == 13 || event.which == 1) {
        Search();
//        var request = new XMLHttpRequest();
//        var keyword = document.getElementById("keywordInput").value;
//
//        request.onreadystatechange = function () {
//            if (request.status === 200) {
//                if (request.readyState === 4) {
//
//                    var responce = request.responseText;
//                    document.getElementById("row").innerHTML = responce;
//                    
//
//                }
//            }
//        };
//        request.open("POST", "../../PhotographSearch", false);
//        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//        request.send("keyword=" + keyword);
    }
}

function enteredPixcelSize(evt) {

    if (evt.which == 13) {
        var minWidth = document.getElementById("minWidth").value;
        var minHeight = document.getElementById("minHeight").value;
        var maxWidth = document.getElementById("maxWidth").value;
        var maxHeight = document.getElementById("maxHeight").value;

        if (minWidth !== "" && maxWidth !== "") {
            if (parseFloat(minWidth) > parseFloat(maxWidth)) {
                alert("Invalid values for Width");
                return false;
            }
        }
        if (minHeight !== "" && maxHeight !== "") {
            if (parseFloat(minHeight) > parseFloat(maxHeight)) {
                alert("Invalid values for Height");
                return false;
            }
        }

        advancedSearch();
        return true;
    } else {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            if (evt.charCode == 46) {
                return true;

            } else {
                return false;

            }
        }
        return true;
    }

}

function  Search() {
    var iframeObj = document.getElementById("selectors");
    var serchedFor = parent.document.getElementById("keywordInput").value;
    var sortBy;
    var orientation = "";
    var sizePixel;
    var minWidth = iframeObj.contentWindow.document.getElementById('minWidth').value;
    var maxWidth = iframeObj.contentWindow.document.getElementById('maxWidth').value;
    var minHeight = iframeObj.contentWindow.document.getElementById('minHeight').value;
    var maxHeight = iframeObj.contentWindow.document.getElementById('maxHeight').value;

    var people;
    var gender = "";
    var undiscovered;

    if (iframeObj.contentWindow.document.getElementById('relevant').checked) {
        sortBy = 'relevant';
    } else {
        sortBy = 'fresh';
    }


    if (iframeObj.contentWindow.document.getElementById('Landscape').checked) {
        orientation += 'Landscape ';

    }
    if (iframeObj.contentWindow.document.getElementById('Portrait').checked) {
        orientation += 'Portrait ';

    }
    if (iframeObj.contentWindow.document.getElementById('Square').checked) {
        orientation += 'Square ';

    }
    if (iframeObj.contentWindow.document.getElementById('Square').checked && iframeObj.contentWindow.document.getElementById('Portrait').checked &&
            iframeObj.contentWindow.document.getElementById('Landscape').checked) {
        orientation = 'AllOrientations';
    }
    if (!iframeObj.contentWindow.document.getElementById('Square').checked
            && !iframeObj.contentWindow.document.getElementById('Portrait').checked && !iframeObj.contentWindow.document.getElementById('Landscape').checked) {
        orientation = 'AllOrientations';
    }

    orientation = orientation.trim();

    if (iframeObj.contentWindow.document.getElementById('Pixels').checked) {
        sizePixel = 'Pixels';
    } else {
        sizePixel = 'MegaPixel';
    }

    if (iframeObj.contentWindow.document.getElementById('WithPeople').checked) {
        people = 'WithPeople';
    } else if (iframeObj.contentWindow.document.getElementById('WithoutPeople').checked) {
        people = 'WithoutPeople';
    }

    if (iframeObj.contentWindow.document.getElementById('Both').checked) {
        gender += 'Both ';

    }
    if (iframeObj.contentWindow.document.getElementById('Male').checked) {
        gender += 'Male ';

    }
    if (iframeObj.contentWindow.document.getElementById('Female').checked) {
        gender += 'Female ';
    }

    if (iframeObj.contentWindow.document.getElementById('Undiscovered').checked) {
        undiscovered = true;
    } else {
        undiscovered = false;
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

    var param = "keyword=" + serchedFor + "&sortBy=" + sortBy + "&orientation=" + orientation + "&sizePixel=" + sizePixel + "&minWidth=" + minWidth + "&maxWidth=" + maxWidth +
            "&minHeight=" + minHeight + "&maxHeight=" + maxHeight + "&people=" + people + "&gender=" + gender + "&undiscovered=" + undiscovered;

    request.open("POST", "../../PhotographAdvancedSearch", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);

}

function  advancedSearch() {

    var iframeObj = document.getElementById("selectors");
    var serchedFor = parent.document.getElementById("keywordInput").value;
    var sortBy;
    var orientation = "";
    var sizePixel;
    var minWidth = document.getElementById('minWidth').value;
    var maxWidth = document.getElementById('maxWidth').value;
    var minHeight = document.getElementById('minHeight').value;
    var maxHeight = document.getElementById('maxHeight').value;

    var people;
    var gender = "";
    var undiscovered;

    if (document.getElementById('relevant').checked) {
        sortBy = 'relevant';
    } else {
        sortBy = 'fresh';
    }


    if (document.getElementById('Landscape').checked) {
        orientation += 'Landscape ';

    }
    if (document.getElementById('Portrait').checked) {
        orientation += 'Portrait ';

    }
    if (document.getElementById('Square').checked) {
        orientation += 'Square ';

    }
//    if (document.getElementById('Panoramic').checked) {
//        orientation += 'Panoramic ';
//
//    }
    if (document.getElementById('Square').checked && document.getElementById('Portrait').checked
            && document.getElementById('Landscape').checked) {
        orientation = 'AllOrientations';
    }
    if (!document.getElementById('Square').checked && !document.getElementById('Portrait').checked && !document.getElementById('Landscape').checked) {
        orientation = 'AllOrientations';
    }

    orientation = orientation.trim();

    if (document.getElementById('Pixels').checked) {
        sizePixel = 'Pixels';
    } else {
        sizePixel = 'MegaPixel';
    }

    if (document.getElementById('WithPeople').checked) {
        people = 'WithPeople';
    } else if (document.getElementById('WithoutPeople').checked) {
        people = 'WithoutPeople';
    }

    if (document.getElementById('Both').checked) {
        gender += 'Both ';

    }
    if (document.getElementById('Male').checked) {
        gender += 'Male ';

    }
    if (document.getElementById('Female').checked) {
        gender += 'Female ';
    }

    if (document.getElementById('Undiscovered').checked) {
        undiscovered = true;
    } else {
        undiscovered = false;
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

    var param = "keyword=" + serchedFor + "&sortBy=" + sortBy + "&orientation=" + orientation + "&sizePixel=" + sizePixel + "&minWidth=" + minWidth + "&maxWidth=" + maxWidth +
            "&minHeight=" + minHeight + "&maxHeight=" + maxHeight + "&people=" + people + "&gender=" + gender + "&undiscovered=" + undiscovered;

    request.open("POST", "../../PhotographAdvancedSearch", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);

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

    autocomplete(document.getElementById("keywordInput"), kWords);
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


    request.open("POST", "../../SuggestKwords", true);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send();

}
