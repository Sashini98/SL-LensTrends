/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function ShowHideDiv() {
        var chkYes = document.getElementById("chkYes");
        var chkNo = document.getElementById("chkNo");
        var photo = document.getElementById("photo");
        var area = document.getElementById("area");
        photo.style.display = chkYes.checked ? "block" : "none";
        area.style.display = chkNo.checked ? "block" : "none";
    }
