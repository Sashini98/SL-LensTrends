function buttonChange(){
//    alert("okkk");
    document.getElementById('notificationIcon').src = "";
    document.getElementById(para).style.color = 'white';
    document.getElementById('notifyDiv').style.backgroundColor = "red";
    
    
}

function buttonBack(){

    document.getElementById('notificationIcon').src = "../../Resources/Img/notify.svg";
    document.getElementById("notify").style.color = "black";
    document.getElementById('notifyDiv').style.backgroundColor = "white";
}