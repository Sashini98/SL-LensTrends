<%-- 
    Document   : Photographer
    Created on : Oct 8, 2020, 11:13:19 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photographer</title>
        <link rel="stylesheet" href="../../CSS/Photographer/PhotographerUpdate.css">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  


    </head>

    <body>

        <div class="fixedheader">

            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
                        <li><a href="#" type="button"> Album </a></li>
                        <li><a href="#" type="button"> Profile </a></li>
                        <li><a href="#" type="button"> Settings </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <ul>
                        <li><a href="#" type="button"> Logout </a></p></li>
                    </ul>
                </div>



            </div>


            <div class="profile-header">
                <div class="user-detail">
                    <div class="user-image">
                        <img src="../../Resources/Img/athavan.jpg">
                        <p class="label">Change</p>
                    </div>
                    <div class="user-data">
                        <h2>Theivendram Athavan</h2>
                        <span class="post-label">Wildlife</span>
                        <span class="post-label">Portraits</span>
                        <span class="post-label">Fashion</span>
                        <span class="post-label">Landscape</span>
                        <p>www.ikongraphy.lk <br>
                            Founder <strong>IkonGraphy</strong><br>                                        
                            <i>Jaffna, Srilanka</i> </p>

                    </div>

                </div>				
            </div>
            <div class="skill-box">

                <ul>
                    <li><a href="#accsec">Account</a></li> <br> <br>
                    <li><a href="#addsec">Address</a></li> <br> <br>
                    <li><a href="#taxsec">Tax Information</a></li> <br> <br>
                    <li><a href="#passsec">Password</a></li> <br> <br>
                    <li><a href="#delsec">Delete Account</a></li> <br> <br>
                    <li><a href="#connsec">Connected Account</a></li> <br> <br>
                </ul>	

            </div>
            <div class="account" id="accsec">
                <div class="heading" >
                    <p>Account                                                            
                        <label> <a href="#" type="button">Client View </a></label>
                    </p>

                </div> <br>
                <div class="edit">
                    <form>                                                        
                    <label for="fname">First Name </label> 
                    <br> 
                    <div class="icon">
                        <input type="text" id="fname" name="fname" placeholder="Theivendram" disabled> 
                        <img id ="pencil" onclick="pencileditenable('fname')" src="../../Resources/Img/edit.png">
                        <img class="icon1" id="ic1" src ="../../Resources/Img/checkmark.png" onclick="changeImage('ic1')" style="visibility:hidden;" >
                        <img class="icon2" id="ic2" src ="../../Resources/Img/cancel.png" onclick="changeImage('ic2')" style="visibility:hidden;">
                    </div>
                    <br> 
                    <label for="lname">Last Name </label>  
                    <br> 
                    <div>
                         <input type="text" id="lname" name="lname" placeholder="Athavan" disabled> 
                         <img onclick="pencileditenable('lname')" src="../../Resources/Img/edit.png">
                    </div>
                    <br> 
                    <label for="uname">User Name </label>  
                    <br>
                    <div>
                        <input type="text" id="uname" name="uname" placeholder="Aaketk17" disabled> 
                        <img onclick="pencileditenable('uname')" src="../../Resources/Img/edit.png">
                    </div>
                    <br> 
                    <label for="email">Email </label>  
                    <br> 
                    <div> 
                         <input type="text" id="email" name="email" placeholder="thavanthya@gmail.com" disabled> 
                         <img onclick="pencileditenable('email')" src="../../Resources/Img/edit.png">
                    </div>
                    <br> 
                    <label for="email">Mobile Number </label>  
                    <br> 
                    <div> 
                         <input type="text" id="mnum" name="mnum" placeholder="+94 77 946 2554" disabled> 
                         <img onclick="pencileditenable('mnum')" src="../../Resources/Img/edit.png">
                    </div>
                    <br> 
                    <label for="website">Website </label>  
                    <br> 
                    <div> 
                         <input type="text" id="web" name="web" placeholder="www.ikongraphy.lk" disabled> 
                         <img onclick="pencileditenable('web')" src="../../Resources/Img/edit.png">
                    </div>
                    <br> 
                    <label for="Bio">Bio</label>
                    <br> 
                    <div> 
                        <textarea id="biotext" name="biotext" cols="57" rows="5" placeholder="Provide some intersting details about you to impress the viewers" disabled></textarea>
                        <img onclick="pencileditenable('biotext')" src="../../Resources/Img/edit.png">
                    </div>
                    <br> 
                    <label for="profilpic">Field of Interest</label>
                    <br> 
                    <div>
                    <textarea id="interest" name="interest" cols="57" rows="3" placeholder="Give your field of interest, separate with comos" disabled></textarea>
                    <img onclick="pencileditenable('interest')" src="../../Resources/Img/edit.png">
                    </div>
                </form>
                </div>
            </div> 

            <div class="tax-info" id="taxsec">
                <div class="heading">
                    <p>Tax Information</p>
                </div> 
                <div class="edit">
                    <p> Fill up your tax form! You could avoid up to 30% withholding's on your revenue  </p>
                    <a href="#" type="button">Add Tax Information</a>
                </div>
            </div>

            <div class="password" id="passsec">
                <div class="heading">
                    <p>Password</p>
                </div> 
                <div class="edit">
                    <p>To change your password, you’ll need to verify the current one first. Then create a password you’re not using elsewhere, and be sure to change it regularly as well as anytime you suspect it’s been compromised.</p>
                    <a href="changepassword.jsp" type="button">Change Password</a>
                </div>

            </div> 

            <div class="deleteacc" id="delsec">
                <div class="heading">
                    <p>Delete Account</p>
                </div> 
                <div class="edit">
                    <p> You may request permanent deletion of your account at any time, provided you do not have active subscriptions.<br> Account you are requesting to be deleted: <span> <strong>ikongraphy18@gmail.com </strong></span> </p>
                    <a href="#" type="button">Delete Account</a>
                </div>

            </div> 

            <div class="connaccount" id="connsec">
                <div class="heading">
                    <p>Connected Accounts</p>
                </div> 
                <div class="edit">
                    <p> Use your social media logins to quickly, easily, and securely access your Sl Lens Trends<br> Account you are requesting to be deleted: </p> <br> <br>

                </div>  

                <div class="icons">
                    <img src="../../Resources/Img/facebook.png"> <label> <i> Not Connected </i> </label> <a href="#" type="button">Connect</a> <br> <br> <br> <br>
                    <img src="../../Resources/Img/google.png"> <label> <i>Connected </i> </label> <a href="#" type="button">Connected</a>
                </div>

            </div> 




            <div class="pagefooter">
                <div class="contact">
                    <p><a href="../Home.jsp" type="button">Sl Lens Trends</a></p>
                </div> 
                <div class="footnote">
                    <ul>
                        <li> <a href="" type="button">Copyright © 2020 Adobe Systems Incorporated. All rights reserved.</a> </li>
                        <li> <a href="#" type="button"> Terms and Condition </a> </li>
                        <li> <a href="#" type="button"> Contact Us </a> </li>
                    </ul>
                </div>        
            </div>                                            

            <script type="text/javascript" src="../../JS/Photohrapher/PhotographerUpdate.js"></script>

    </body>

</html>
