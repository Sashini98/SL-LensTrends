function loadCartItems(ClientId){
    alert("olll")
    var request = new XMLHttpRequest();
    request.onreadystatechange = function(){
        if (request.status == 200) {
            if (request.readyState == 4) {
                
            }
        }
    };
    
    request.open("POST", "../../CartDetails", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("clientId="+ ClientId);
    
}