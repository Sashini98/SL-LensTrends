

function emailValid()
{
    if (/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(CRegister.email.value))
    {
        return (true)
    }
    alert("You have entered an invalid email address!");
    return (false)
}

function pwValid()
{
    var password = CRegister.pass.value;
    var confirmPassword = CRegister.passR.value;
    if (password != confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}

function validateForm() {
    var email = document.forms["CRegister"]["email"].value;
    if (email == "" || email == null) {
        alert("Email must be filled out");
        return false;
    }

    var pw = document.forms["CRegister"]["pass"].value;
    if (pw == "" || pw == null) {
        alert("Password must be filled out");
        return false;
    }

    var fname = document.forms["CRegister"]["fname"].value;
    if (fname == "" || fname == null) {
        alert("First Name must be filled out");
        return false;
    }

    var lname = document.forms["CRegister"]["lname"].value;
    if (lname == "" || lname == null) {
        alert("Last Name must be filled out");
        return false;
    }

    var address = document.forms["CRegister"]["address"].value;
    if (address == "" || address == null) {
        alert("Address must be filled out");
        return false;
    }

    var city = document.forms["CRegister"]["city"].value;
    if (city == "" || city == null) {
        alert("City must be filled out");
        return false;
    }

    var province = document.forms["CRegister"]["province"].value;
    if (province == "" || lname == null) {
        alert("Province must be filled out");
        return false;
    }


}
