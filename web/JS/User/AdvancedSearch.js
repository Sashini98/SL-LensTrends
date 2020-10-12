function checkSubCategory() {
    var subCategory = document.getElementById("subCategory");
    var subCategory1 = document.getElementById("subCategory1");
    var subCategory2 = document.getElementById("subCategory2");
    var subCategory3 = document.getElementById("subCategory3");
    
    if (subCategory.checked) {
        subCategory1.checked=false;
        subCategory2.checked=false;
        subCategory3.checked=false;
    }
    
    if ((subCategory1.checked)&&(subCategory2.checked)&&(subCategory3.checked)) {
        subCategory.checked=true;
        subCategory1.checked=false;
        subCategory2.checked=false;
        subCategory3.checked=false;
    }else{
        subCategory.checked=false;
    }
    
}

