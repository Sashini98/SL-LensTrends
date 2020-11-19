
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

function trimfield(str) 
{ 
    return str.replace(/^\s+|\s+$/g,''); 
}

//function validateForm() {
//  var title = document.forms["askQ"]["title"].value;
//  if (title == "" || title == null) {
//    alert("Title must be filled out");
//    return false;
//  }
//  
//  
//}