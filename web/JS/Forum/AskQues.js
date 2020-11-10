$('#submit').click(function(){
    var myTxt = $('.body').html();
    alert(myTxt);
    $.ajax({
        type: 'post',
        url:  '../../AskQues.java',
        data: {data: myTxt}
        
    });

});



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

function lbc(h, a, i) { 
    var g = document.getElementById(h);
    g.focus();
    if (g.setSelectionRange) {
        var c = g.scrollTop;
        var e = g.selectionStart;
        var f = g.selectionEnd;
        g.value = g.value.substring(0, g.selectionStart) + a + g.value.substring(g.selectionStart, g.selectionEnd) + i + g.value.substring(g.selectionEnd, g.value.length);
        g.selectionStart = e;
        g.selectionEnd = f + a.length + i.length;
        g.scrollTop = c;
    } else {
        if (document.selection && document.selection.createRange) {
            g.focus();
            var b = document.selection.createRange();
            if (b.text != "") {
                b.text = a + b.text + i;
            } else {
                b.text = a + "REPLACE" + i;
            }
            g.focus();
        }
    }
}
