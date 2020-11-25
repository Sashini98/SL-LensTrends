
function DropDownChanged(oDDL) {
    var oTextbox = oDDL.form.elements["c_txt"];
    if (oTextbox) {
        oTextbox.style.display = (oDDL.value == "") ? "" : "none";
        if (oDDL.value == "") {
            oTextbox.focus();
        }
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
    return str.replace(/^\s+|\s+$/g, '');
}

function validateForm() {
    var title = document.forms["askQ"]["title"].value;
    if (title == "" || title == null) {
        alert("Title must be filled out");
        return false;
    }

//    var bd = document.getElementById("Questionbody");
//
//    if (trimfield(bd.value) == '') {
//        alert("Question must be filled out");
//        return false;
//    }
}

function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
  var input, filter, ul, li, a, i;
  div = document.getElementById("myDropdown");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}

function myFunction1() {
  document.getElementById("myDropdown1").classList.toggle("show");
}

function filterFunction() {
  var input, filter, ul, li, a, i;
  div = document.getElementById("myDropdown1");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}

function myFunction2() {
  document.getElementById("myDropdown2").classList.toggle("show");
}

function filterFunction() {
  var input, filter, ul, li, a, i;
  div = document.getElementById("myDropdown2");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}