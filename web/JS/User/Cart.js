function loadCartItems(ClientId){
    var request = new XMLHttpRequest();
    request.onreadystatechange = function(){
        if (request.status == 200) {
            if (request.readyState == 4) {
                var responce = request.responseText;
                document.getElementById("cartPhotos").innerHTML = responce;
            }
        }
    };
    
    request.open("POST", "../../CartDetails", false);
    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    request.send("clientId="+ ClientId);
    
}

function cartItemCount(ClientId){
    
    var request = new XMLHttpRequest();
    
    request.onreadystatechange = function (){
        if (request.status == 200) {
            if (request.readyState == 4) {
                var responce = request.responseText;
                document.getElementById("ItemCount").innerHTML = "Images ("+responce+")";
            }
        }
        
    };
    request.open("POST", "../../CartItemCount", false);
    request.setRequestHeader("content-Type","application/x-www-form-urlencoded");
    request.send("ClientId="+ClientId);
    
}