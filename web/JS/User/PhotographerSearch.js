function  PhotographerKeywordSearch(event, x) {

    if (event.which == 13 || event.which == 1) {
        if (x === 1) {
            Search();

        }else if(x === 2){
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


function Search2(){

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

document.getElementById("add").onclick
var pname;


var request = new XMLHttpRequest();

request.onreadystatechange = function () {

    if (request.status === 200) {
        if (request.readyState === 4) {

            var responce = request.responseText;
            pname = JSON.parse(responce);
            

        }
    }

};

request.open("POST", "../../photographer_suggest", false);
request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
request.send();

autocomplete(document.getElementById("keywordSearch"), pname);


