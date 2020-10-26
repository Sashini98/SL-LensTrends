
function pencileditenable(edit) {
    document.getElementById(edit).disabled=false;
  
    
    if (edit == "fname") {
            document.getElementById("pencil").style.visibility ="hidden";
            document.getElementById("ic1").style.visibility ="visible";
            document.getElementById("ic2").style.visibility ="visible";
    }
}

