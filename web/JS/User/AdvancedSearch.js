function checkSubCategory(i, action) {

    if (i === '1') {
        var subCategory = document.getElementById("Both");
        var subCategory1 = document.getElementById("Male");
        var subCategory2 = document.getElementById("Female");

        if (subCategory.checked) {
            subCategory1.checked = false;
            subCategory2.checked = false;
        }

        if ((subCategory1.checked) && (subCategory2.checked)) {
            subCategory.checked = true;
            subCategory1.checked = false;
            subCategory2.checked = false;
        }

    } else if (i === '2') {

        var subCategory = document.getElementById("AllOrientations");
        var subCategory1 = document.getElementById("Horizontal");
        var subCategory2 = document.getElementById("Vertical");
        var subCategory3 = document.getElementById("Square");
        var subCategory4 = document.getElementById("Panoramic");

        if (subCategory.checked) {
            subCategory1.checked = false;
            subCategory2.checked = false;
            subCategory3.checked = false;
            subCategory4.checked = false;
        }

        if ((subCategory1.checked) && (subCategory2.checked) && (subCategory3.checked) && (subCategory4.checked)) {
            subCategory.checked = true;
            subCategory1.checked = false;
            subCategory2.checked = false;
            subCategory3.checked = false;
            subCategory4.checked = false;
        } else {
            subCategory.checked = false;
            document.getElementById(action).checked = true;
        }
    } else if (i === '3') {
        var subCategory = document.getElementById("WithPeople");
        var subCategory1 = document.getElementById("WithoutPeople");

        if (subCategory.checked) {
            if (action === 'WithPeople') {
                subCategory.checked = false;
                subCategory1.checked = false;

                document.getElementById("Both").checked = false;
                document.getElementById("Male").checked = false;
                document.getElementById("Female").checked = false;

            } else {
                subCategory1.checked = true;

            }
        }
    }
}

