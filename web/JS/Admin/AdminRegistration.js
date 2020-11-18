function validateForm() {
  var email = document.forms["ARegister"]["email"].value;
  if (email == "" || email == null) {
    alert("Email must be filled out");
    return false;
  }
  
  var pw = document.forms["ARegister"]["pass"].value;
  if (pw == "" || pw == null) {
    alert("Password must be filled out");
    return false;
  }
  
  var fname = document.forms["ARegister"]["fname"].value;
  if (fname == "" || fname == null) {
    alert("First Name must be filled out");
    return false;
  }
  
  var lname = document.forms["ARegister"]["lname"].value;
  if (lname == "" || lname == null) {
    alert("Last Name must be filled out");
    return false;
  }
  
  var lname = document.forms["ARegister"]["mobile"].value;
  if (lname == "" || lname == null) {
    alert("Mobile Number must be filled out");
    return false;
  }
  
  var address = document.forms["ARegister"]["address"].value;
  if (address == "" || address == null) {
    alert("Address must be filled out");
    return false;
  }
  
  var city = document.forms["ARegister"]["city"].value;
  if (city == "" || city == null) {
    alert("City must be filled out");
    return false;
  }
  
  var province = document.forms["ARegister"]["province"].value;
  if (province == "" || lname == null) {
    alert("Province must be filled out");
    return false;
  }
  
  var province = document.forms["ARegister"]["type"].value;
  if (province == "" || lname == null) {
    alert("Type must be filled out");
    return false;
  }
  
 
}

function emailValid()
{
    if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(ARegister.email.value))
  {
    return (true)
  }
    alert("You have entered an invalid email address!")
    return (false)
}

function passValid()
{
    var password = ARegister.pass.value;
        var confirmPassword = ARegister.passR.value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
}       

