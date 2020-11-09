function notifyButtonChange(){

    document.getElementById("notificationIcon").src = "";
    document.getElementById("notify").style.color = "white";
    document.getElementById("notifyDiv").style.backgroundColor = "red";
    
    
}

function notifyButtonBack(){

    document.getElementById("notificationIcon").src = "../../Resources/Img/notify.svg";
    document.getElementById("notify").style.color = "black";
    document.getElementById("notifyDiv").style.backgroundColor = "white";
}