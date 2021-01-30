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