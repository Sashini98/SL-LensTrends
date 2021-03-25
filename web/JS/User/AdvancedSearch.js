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
    var serchedFor= parent.document.getElementById("keywordInput").value;
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


    if (iframeObj.contentWindow.document.getElementById('Horizontal').checked) {
        orientation += 'Horizontal ';

    }
    if (iframeObj.contentWindow.document.getElementById('Vertical').checked) {
        orientation += 'Vertical ';

    }
    if (iframeObj.contentWindow.document.getElementById('Square').checked) {
        orientation += 'Square ';

    }
    if (iframeObj.contentWindow.document.getElementById('Panoramic').checked) {
        orientation += 'Panoramic ';

    }
    if (iframeObj.contentWindow.document.getElementById('Panoramic').checked && iframeObj.contentWindow.document.getElementById('Square').checked
            && iframeObj.contentWindow.document.getElementById('Vertical').checked && iframeObj.contentWindow.document.getElementById('Horizontal').checked) {
        orientation = 'AllOrientations';
    }
    if (!iframeObj.contentWindow.document.getElementById('Panoramic').checked && !iframeObj.contentWindow.document.getElementById('Square').checked
            && !iframeObj.contentWindow.document.getElementById('Vertical').checked && !iframeObj.contentWindow.document.getElementById('Horizontal').checked) {
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

    var param = "keyword="+ serchedFor +"&sortBy=" + sortBy + "&orientation=" + orientation + "&sizePixel=" + sizePixel + "&minWidth=" + minWidth + "&maxWidth=" + maxWidth +
            "&minHeight=" + minHeight + "&maxHeight=" + maxHeight + "&people=" + people + "&gender=" + gender + "&undiscovered=" + undiscovered;

    request.open("POST", "../../PhotographAdvancedSearch", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);

}

function  advancedSearch() {
    
    var iframeObj = document.getElementById("selectors");
    var serchedFor= parent.document.getElementById("keywordInput").value;
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


    if (document.getElementById('Horizontal').checked) {
        orientation += 'Horizontal ';

    }
    if (document.getElementById('Vertical').checked) {
        orientation += 'Vertical ';

    }
    if (document.getElementById('Square').checked) {
        orientation += 'Square ';

    }
    if (document.getElementById('Panoramic').checked) {
        orientation += 'Panoramic ';

    }
    if (document.getElementById('Panoramic').checked && document.getElementById('Square').checked
            && document.getElementById('Vertical').checked && document.getElementById('Horizontal').checked) {
        orientation = 'AllOrientations';
    }
    if (!document.getElementById('Panoramic').checked && !document.getElementById('Square').checked
            && !document.getElementById('Vertical').checked && !document.getElementById('Horizontal').checked) {
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

    var param = "keyword="+ serchedFor +"&sortBy=" + sortBy + "&orientation=" + orientation + "&sizePixel=" + sizePixel + "&minWidth=" + minWidth + "&maxWidth=" + maxWidth +
            "&minHeight=" + minHeight + "&maxHeight=" + maxHeight + "&people=" + people + "&gender=" + gender + "&undiscovered=" + undiscovered;

    request.open("POST", "../../PhotographAdvancedSearch", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send(param);

}