
function DropDownChanged(oDDL) {
    var oTextbox = oDDL.form.elements["c_txt"];
    if (oTextbox) {
        oTextbox.style.display = (oDDL.value == "") ? "" : "none";
        if (oDDL.value == "")
            oTextbox.focus();
    }
}

function FormSubmit(oForm) {
    var oHidden = oForm.elements["category"];
    var oDDL = oForm.elements["categ"];
    var oTextbox = oForm.elements["c_txt"];
    if (oHidden && oDDL && oTextbox)
        oHidden.value = (oDDL.value == "") ? oTextbox.value : oDDL.value;
}


function validate()
{
    var x = document.forms["askQ"]["title"].value;
    if (x == "") {
        alert("Title must be filled out");
        return false;
    }

//    var y = document.forms["askQ"]["body"].value;
//    if (y == "") {
//        alert("Question must be filled out");
//        return false;
//    }
}