/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function  filter() {
    
   
    var sortBy;
    
    var filterBy;
    

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
