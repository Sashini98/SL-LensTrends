function checkDate() {
            var date = 
                document.getElementById('eveDate').value;
              
            var inpDate = new Date(date);
            var currDate = new Date();
              
            if(currDate.toDateString() > 
                        inpDate.toDateString()){
               alert("The date you entered is already past! Please input a valid date");
               document.getElementById('eveDate').value="";
            }
            
        }

function ShowHideDiv() {
        var chkYes = document.getElementById("chkYes");
        var chkNo = document.getElementById("chkNo");
        var photo = document.getElementById("photo");
        var area = document.getElementById("area");
        photo.style.display = chkYes.checked ? "block" : "none";
        area.style.display = chkNo.checked ? "block" : "none";
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