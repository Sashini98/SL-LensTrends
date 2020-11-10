<%-- 
    Document   : AdminProfile
    Created on : Nov 9, 2020, 10:28:47 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminProfile.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="profile-header">
            <div class="user-detail">
                <div class="user-image">
                    <img src="../../Resources/Img/user.png">
                    <div class="label">Change</div>
                </div>
                <div class="user-data">
                    <h2>Madusha Mahendran</h2>
                </div>

            </div>				
        </div>

        <div class="account">
            <div class="heading" >
                <p>Account</p>

            </div> <br>
            <div class="edit">
                <form>                                                        
                    <label for="fname">First Name </label> 
                    <br> 
                    <div class="icon">
                        <input type="text" id="fname" name="fname" placeholder="" disabled> 
                        <img id ="pencil1" onclick="pencileditenable('fname')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic1" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic1')" style="visibility:hidden;" >
                        <img class="icon2" id="ic2" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic2')" style="visibility:hidden;">
                    </div>
                    <br> 
                    <label for="lname">Last Name </label>  
                    <br> 
                    <div class="icon">
                        <input type="text" id="lname" name="lname" placeholder="" disabled> 
                        <img id="pencil2" onclick="pencileditenable('lname')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic3" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic3')" style="visibility:hidden;" >
                        <img class="icon2" id="ic4" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic4')" style="visibility:hidden;">
                    </div>                   
                    <br> 
                    <label for="email">Email </label>  
                    <br> 
                    <div class="icon"> 
                        <input type="text" id="email" name="email" placeholder="" disabled> 
                        <img id="pencil3" onclick="pencileditenable('email')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic5" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic5')" style="visibility:hidden;" >
                        <img class="icon2" id="ic6" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic6')" style="visibility:hidden;">
                    </div>
                    <br> 
                    <label for="mnum">Mobile Number </label>  
                    <br> 
                    <div class="icon"> 
                        <input type="text" id="mnum" name="mnum" placeholder="" disabled> 
                        <img id="pencil4" onclick="pencileditenable('mnum')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic7" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic7')" style="visibility:hidden;" >
                        <img class="icon2" id="ic8" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic8')" style="visibility:hidden;">
                    </div>
                    <br>
                </form>
            </div>
        </div> 
    </div>
    <div class="address">
        <div class="heading">
            <p>Address</p>
        </div> <br>
        <div class="edit">
            <form>
                <label for="address" >Address </label> 
                <br>
                <div class="icon"> 
                    <input type="text" id="address" name="address" placeholder="" disabled> 
                    <img id="pencil8" onclick="pencileditenable('address')" src="../../Resources/Img/edit.png">
                    <img class="icon1" id="ic15" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic15')" style="visibility:hidden;" >
                    <img class="icon2" id="ic16" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic16')" style="visibility:hidden;">
                </div>
                <br>
                <label for="city">City </label>                     
                <br>
                <div>
                    <input type="text" id="city" name="city" placeholder="" disabled>
                    <img id="pencil9" onclick="pencileditenable('city')" src="../../Resources/Img/edit.png">
                    <img class="icon1" id="ic17" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic17')" style="visibility:hidden;" >
                    <img class="icon2" id="ic18" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic18')" style="visibility:hidden;">
                </div>
                <br>
                <label for="province">Province </label>  
                <br>
                <div>
                    <input type="text" id="province" name="province" placeholder="" disabled> 
                    <img id="pencil10" onclick="pencileditenable('province')" src="../../Resources/Img/edit.png">
                    <img class="icon1" id="ic19" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic19')" style="visibility:hidden;" >
                    <img class="icon2" id="ic20" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic20')" style="visibility:hidden;">
                </div>                   
                <br>
                <label for="zip">Zip/Postal </label>  
                <br>
                <div>
                    <input type="text" id="zip" name="zip" placeholder="" disabled>
                    <img id="pencil11" onclick="pencileditenable('zip')" src="../../Resources/Img/edit.png">
                    <img class="icon1" id="ic21" src ="../../Resources/Img/checkmark.png" onclick="updatedata('ic21')" style="visibility:hidden;" >
                    <img class="icon2" id="ic22" src ="../../Resources/Img/cancel.png" onclick="cancelupdate('ic22')" style="visibility:hidden;">
                </div>

            </form>
        </div>
    </div>

    <div class="password">
        <div class="heading">
            <p>Password</p>
        </div> 
        <div class="edit">
            <p>To change your password, you’ll need to verify the current one first. Then create a password you’re not using elsewhere, and be sure to change it regularly as well as anytime you suspect it’s been compromised.</p>
            <a href="../Photographer/changepassword.jsp" type="button">Change Password</a>
        </div>

    </div> 
</body>
</html>
